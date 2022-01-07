
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_w_err_gc {int lba_list; } ;
struct pblk_line_mgmt {int dummy; } ;
struct pblk_line {struct pblk_w_err_gc* chks; struct pblk_w_err_gc* erase_bitmap; struct pblk_w_err_gc* blk_bitmap; struct pblk_w_err_gc* w_err_gc; } ;


 int kfree (struct pblk_w_err_gc*) ;
 int kvfree (int ) ;

__attribute__((used)) static void pblk_line_meta_free(struct pblk_line_mgmt *l_mg,
    struct pblk_line *line)
{
 struct pblk_w_err_gc *w_err_gc = line->w_err_gc;

 kfree(line->blk_bitmap);
 kfree(line->erase_bitmap);
 kfree(line->chks);

 kvfree(w_err_gc->lba_list);
 kfree(w_err_gc);
}
