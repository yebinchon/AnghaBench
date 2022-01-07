
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int free_lock; int free_list; struct pblk_line* data_line; } ;
struct pblk_line {int list; } ;
struct pblk {int rl; struct pblk_line_mgmt l_mg; } ;


 int EINTR ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int pblk_line_alloc_bitmaps (struct pblk*,struct pblk_line*) ;
 int pblk_line_init_bb (struct pblk*,struct pblk_line*,int ) ;
 int pblk_line_prepare (struct pblk*,struct pblk_line*) ;
 int pblk_rl_free_lines_dec (int *,struct pblk_line*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int pblk_line_recov_alloc(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 int ret;

 spin_lock(&l_mg->free_lock);
 l_mg->data_line = line;
 list_del(&line->list);

 ret = pblk_line_prepare(pblk, line);
 if (ret) {
  list_add(&line->list, &l_mg->free_list);
  spin_unlock(&l_mg->free_lock);
  return ret;
 }
 spin_unlock(&l_mg->free_lock);

 ret = pblk_line_alloc_bitmaps(pblk, line);
 if (ret)
  goto fail;

 if (!pblk_line_init_bb(pblk, line, 0)) {
  ret = -EINTR;
  goto fail;
 }

 pblk_rl_free_lines_dec(&pblk->rl, line, 1);
 return 0;

fail:
 spin_lock(&l_mg->free_lock);
 list_add(&line->list, &l_mg->free_list);
 spin_unlock(&l_mg->free_lock);

 return ret;
}
