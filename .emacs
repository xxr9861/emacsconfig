					;start package.el with emacs
(require 'package)
                                        ; add melpa to repository list

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; idk a lot of the auto-complete messes up my yasnippets thing
;; ;; start auto-complete with emacs
;; (require 'auto-complete)
;; ;; do default config for auto-complete
;; (require 'auto-complete-config)
;; (ac-config-default)
;; ;; lets define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
;; (defun my:ac-header-init()
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers)
;;   (add-to-list 'achead:include-directories "/usr/lib/gcc/x86_64-pc-linux-gnu/7.3.1/../../../../include/c++/7.3.1")
;;   )
;; ;; now let us call this function from c/c++ hooks
;; (add-hook 'c++-mode-hook 'my:ac-header-init)
;; (add-hook 'c-mode-hook 'my:ac-header-init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(display-time-mode t)
 '(org-agenda-files
   (quote
    ("~/workbench/CPROG/massive.c" "~/emacs_workbench/todo.org")))
 '(package-selected-packages
   (quote
    (auto-complete-c-headers auto-complete slime yasnippet htmlize org-edna org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; for turning yes to y and no to n
(fset 'yes-or-no-p 'y-or-n-p)
;; clock in the modline
(display-time-mode 1)
;; In my world, sentences end with a single space. This makes
;; sentence navigation commands work for me.

;; #+BEGIN_SRC emacs-lisp :tangle yes
(setq sentence-end-double-space nil)
;; #+END_SRC                                                                           
;; using the clipboard

(load-file "/home/majhi/.emacs.d/xclip.el")

;; yas

(require 'yasnippet)
(yas-global-mode 1)

;;

;; You can get Emacs to automatically open your agenda whenever you start it. Add the following lines to your =~/.emacs.d/init.el= file:

;; ;; #+begin_src emacs-lisp
;; (org-agenda nil "a")
;; ;; #+end_src
;; to turn off the menu bar
;; (menu-bar-mode -1) // but i prefer the menu while in x
;; to turn the menu one again
(menu-bar-mode 1) ;; i hated the tool bar
;; no org-babel execute function for c or sh or bash
(org-babel-do-load-languages
 'org-babel-load-languages '((sh . t)(C . t)(java . t)(python . t)))
;; apparently this is old
;; (org-babel-do-load-languages
;;  'org-babel-load-languages '((shell . t)(C . t)(java . t)))


;; fontify code in code blocks
(setq org-src-fontify-natively t)
;; my-abbrev.el at .emacs.d/lisp/my-abbrev.el
;; (load "~/.emacs.d/lisp/my-abbrev.el")
;; this is to wrap long lines to fit the display, just do mx toggle-truncate-lines
;; (toggle-truncate-lines 1)

(toggle-truncate-lines 0)
;; eww background color fix
(setq shr-color-visible-luminance-min 70)
