
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pblk_line_mgmt {int free_lock; } ;
struct pblk_line {int left_msecs; } ;
struct pblk {scalar_t__ min_write_pgs; struct pblk_line_mgmt l_mg; } ;


 int __pblk_alloc_page (struct pblk*,struct pblk_line*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pblk_update_line_wp(struct pblk *pblk, struct pblk_line *line,
    u64 written_secs)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 int i;

 for (i = 0; i < written_secs; i += pblk->min_write_pgs)
  __pblk_alloc_page(pblk, line, pblk->min_write_pgs);

 spin_lock(&l_mg->free_lock);
 if (written_secs > line->left_msecs) {




  line->left_msecs = 0;
 } else {

  line->left_msecs -= written_secs;
 }
 spin_unlock(&l_mg->free_lock);
}
