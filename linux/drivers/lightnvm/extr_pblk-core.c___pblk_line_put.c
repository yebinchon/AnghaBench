
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line_mgmt {int free_lock; int nr_free_lines; int free_list; } ;
struct pblk_line {scalar_t__ state; int list; int lock; TYPE_1__* w_err_gc; int gc_group; int id; } ;
struct pblk_gc {int pipeline_gc; } ;
struct pblk {int rl; struct pblk_gc gc; struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {scalar_t__ has_write_err; scalar_t__ has_gc_err; } ;


 int PBLK_LINEGC_NONE ;
 scalar_t__ PBLK_LINESTATE_FREE ;
 scalar_t__ PBLK_LINESTATE_GC ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int list_add_tail (int *,int *) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_err (struct pblk*,char*,int ) ;
 int pblk_line_free (struct pblk_line*) ;
 int pblk_put_line_back (struct pblk*,struct pblk_line*) ;
 int pblk_rl_free_lines_inc (int *,struct pblk_line*) ;
 int pblk_rl_werr_line_out (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_pblk_line_state (int ,int ,scalar_t__) ;

__attribute__((used)) static void __pblk_line_put(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_gc *gc = &pblk->gc;

 spin_lock(&line->lock);
 WARN_ON(line->state != PBLK_LINESTATE_GC);
 if (line->w_err_gc->has_gc_err) {
  spin_unlock(&line->lock);
  pblk_err(pblk, "line %d had errors during GC\n", line->id);
  pblk_put_line_back(pblk, line);
  line->w_err_gc->has_gc_err = 0;
  return;
 }

 line->state = PBLK_LINESTATE_FREE;
 trace_pblk_line_state(pblk_disk_name(pblk), line->id,
     line->state);
 line->gc_group = PBLK_LINEGC_NONE;
 pblk_line_free(line);

 if (line->w_err_gc->has_write_err) {
  pblk_rl_werr_line_out(&pblk->rl);
  line->w_err_gc->has_write_err = 0;
 }

 spin_unlock(&line->lock);
 atomic_dec(&gc->pipeline_gc);

 spin_lock(&l_mg->free_lock);
 list_add_tail(&line->list, &l_mg->free_list);
 l_mg->nr_free_lines++;
 spin_unlock(&l_mg->free_lock);

 pblk_rl_free_lines_inc(&pblk->rl, line);
}
