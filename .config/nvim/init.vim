set number relativenumber

" remap ESC Key
imap jk <Esc>
" remap FileWindow moving to ctrl + hjkl
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

map <Leader> <Plug>(easymotion-prefix)

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamed " Use the system clip board

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

call plug#begin()
Plug 'scrooloose/nerdTree'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'stephpy/vim-yaml'
Plug 'gentoo/gentoo-syntax'
call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
nmap <leader>bb :NERDTreeToggle<Return>
