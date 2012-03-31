call pathogen#infect()

syntax on
filetype plugin indent on
syntax enable

" change leader key from default '\' to ','
let mapleader = ","

" Tabs are four columns wide. Each indentation level is one tab. (Popular with Windows developers using Visual Studio.) 
" via http://www.tedlogan.com.techblog3.html
:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 

" removes vi compatibility
set nocompatible

"helps VIM manage buffers effectively
set hidden

" using zenburn colorscheme
colors zenburn

" set title when running VIM in terminal mode
set title

" always show line numbers
" set number

" shows line numbers relative to cursor positon
set relativenumber

" always show cursor position
set ruler

" highlights the line the cursor is on
set cursorline

" turn off gweeper
set visualbell

" always auto-indent
set autoindent

" makes backspace key behave as expected
set backspace=indent,eol,start

" maintain 3 lines of space around the cursor
set scrolloff = 3 

" boost VIM history
set history = 1000

" creates a file that allows undos to persist over sessions
set undofile

" make / searches case-sensitive only when capital letters are used in the
" search term
set ignorecase
set smartcase

" Highlight search terms
set hlsearch
set incsearch "  ... dynamically updating them as you type

" turn off search highlighting
nmap <silent> <leader>h :silent :nohlsearch<CR>

" list <TAB> completion options
set wildmenu
set wildmode = list:longest " ... limit options to likely results

" handle long lines correctly via stevelosh.com -> Coming Home to VIM
" set wrap
" set linebreak
" set textwidth=79
" set colorcolumn=85

" invoke CtrlP Plugin in normal mode
let g:ctrlp_map = '<c-p>'

" swap keys for jumping to markers
noremap ' `
noremap ` '

" prevent swapfiles from writing to working directory

" save backup files to ~/.vim/backup/
set backupdir=~/.vim/backup/
" save swap files to ~/.vim/backup/
set directory=~/.vim/backup/
" save undo files to ~/.vim/backup
set undodir=~/.vim/backup/

" open NerdTree when Vim starts without a specified file
autocmd vimenter * if !argc() | NERDTree | endif

" Toggles NERDTree 
nmap <silent> <leader>n :silent :NERDTreeToggle<CR>

" Matching
silent! runtime macros/matchit.vim

