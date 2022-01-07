
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pblk_line_mgmt {int gc_lock; } ;
struct pblk_line {scalar_t__ state; int list; int lock; int vsc; int invalid_bitmap; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;
struct list_head {int dummy; } ;


 scalar_t__ PBLK_LINESTATE_CLOSED ;
 scalar_t__ PBLK_LINESTATE_FREE ;
 scalar_t__ PBLK_LINESTATE_GC ;
 int WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 int le32_add_cpu (int ,int) ;
 int list_move_tail (int *,struct list_head*) ;
 struct list_head* pblk_line_gc_list (struct pblk*,struct pblk_line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

void __pblk_map_invalidate(struct pblk *pblk, struct pblk_line *line,
      u64 paddr)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct list_head *move_list = ((void*)0);





 spin_lock(&line->lock);
 WARN_ON(line->state == PBLK_LINESTATE_FREE);

 if (test_and_set_bit(paddr, line->invalid_bitmap)) {
  WARN_ONCE(1, "pblk: double invalidate\n");
  spin_unlock(&line->lock);
  return;
 }
 le32_add_cpu(line->vsc, -1);

 if (line->state == PBLK_LINESTATE_CLOSED)
  move_list = pblk_line_gc_list(pblk, line);
 spin_unlock(&line->lock);

 if (move_list) {
  spin_lock(&l_mg->gc_lock);
  spin_lock(&line->lock);

  if (line->state == PBLK_LINESTATE_GC) {
   spin_unlock(&line->lock);
   spin_unlock(&l_mg->gc_lock);
   return;
  }
  spin_unlock(&line->lock);

  list_move_tail(&line->list, move_list);
  spin_unlock(&l_mg->gc_lock);
 }
}
