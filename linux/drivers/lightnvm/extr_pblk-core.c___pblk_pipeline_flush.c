
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int free_lock; } ;
struct pblk {scalar_t__ state; int bb_wq; struct pblk_line_mgmt l_mg; } ;


 scalar_t__ PBLK_STATE_RECOVERING ;
 scalar_t__ PBLK_STATE_STOPPED ;
 int flush_workqueue (int ) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_err (struct pblk*,char*,int) ;
 int pblk_flush_writer (struct pblk*) ;
 int pblk_line_close_meta_sync (struct pblk*) ;
 int pblk_recov_pad (struct pblk*) ;
 int pblk_wait_for_meta (struct pblk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_pblk_state (int ,scalar_t__) ;

void __pblk_pipeline_flush(struct pblk *pblk)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 int ret;

 spin_lock(&l_mg->free_lock);
 if (pblk->state == PBLK_STATE_RECOVERING ||
     pblk->state == PBLK_STATE_STOPPED) {
  spin_unlock(&l_mg->free_lock);
  return;
 }
 pblk->state = PBLK_STATE_RECOVERING;
 trace_pblk_state(pblk_disk_name(pblk), pblk->state);
 spin_unlock(&l_mg->free_lock);

 pblk_flush_writer(pblk);
 pblk_wait_for_meta(pblk);

 ret = pblk_recov_pad(pblk);
 if (ret) {
  pblk_err(pblk, "could not close data on teardown(%d)\n", ret);
  return;
 }

 flush_workqueue(pblk->bb_wq);
 pblk_line_close_meta_sync(pblk);
}
