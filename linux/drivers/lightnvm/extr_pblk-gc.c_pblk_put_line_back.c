
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int gc_lock; } ;
struct pblk_line {scalar_t__ state; int list; int lock; int gc_group; int id; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;
struct list_head {int dummy; } ;


 int PBLK_LINEGC_NONE ;
 scalar_t__ PBLK_LINESTATE_CLOSED ;
 scalar_t__ PBLK_LINESTATE_GC ;
 int WARN_ON (int) ;
 int list_add_tail (int *,struct list_head*) ;
 int pblk_disk_name (struct pblk*) ;
 struct list_head* pblk_line_gc_list (struct pblk*,struct pblk_line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_pblk_line_state (int ,int ,scalar_t__) ;

void pblk_put_line_back(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct list_head *move_list;

 spin_lock(&l_mg->gc_lock);
 spin_lock(&line->lock);
 WARN_ON(line->state != PBLK_LINESTATE_GC);
 line->state = PBLK_LINESTATE_CLOSED;
 trace_pblk_line_state(pblk_disk_name(pblk), line->id,
     line->state);






 line->gc_group = PBLK_LINEGC_NONE;
 move_list = pblk_line_gc_list(pblk, line);
 spin_unlock(&line->lock);
 list_add_tail(&line->list, move_list);
 spin_unlock(&l_mg->gc_lock);
}
