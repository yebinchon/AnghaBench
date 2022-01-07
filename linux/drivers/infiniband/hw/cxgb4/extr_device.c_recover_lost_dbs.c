
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int pdev; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct qp_list {int idx; struct c4iw_qp** qps; } ;
struct TYPE_13__ {scalar_t__ wq_pidx_inc; int qid; } ;
struct TYPE_11__ {scalar_t__ wq_pidx_inc; int qid; } ;
struct TYPE_17__ {TYPE_3__ rq; TYPE_1__ sq; } ;
struct c4iw_qp {TYPE_6__* rhp; int lock; TYPE_7__ wq; } ;
struct TYPE_14__ {int * ports; } ;
struct TYPE_15__ {TYPE_4__ lldi; } ;
struct TYPE_16__ {TYPE_5__ rdev; int qps; } ;


 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ cxgb4_dbfifo_count (int ,int) ;
 int cxgb4_sync_txq_pidx (int ,int ,int ,int ) ;
 int pci_name (int ) ;
 int pr_err (char*,int ,int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_rq_host_wq_pidx (TYPE_7__*) ;
 int t4_rq_wq_size (TYPE_7__*) ;
 int t4_sq_host_wq_pidx (TYPE_7__*) ;
 int t4_sq_wq_size (TYPE_7__*) ;
 int usecs_to_jiffies (int) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

__attribute__((used)) static void recover_lost_dbs(struct uld_ctx *ctx, struct qp_list *qp_list)
{
 int idx;
 int ret;

 for (idx = 0; idx < qp_list->idx; idx++) {
  struct c4iw_qp *qp = qp_list->qps[idx];

  xa_lock_irq(&qp->rhp->qps);
  spin_lock(&qp->lock);
  ret = cxgb4_sync_txq_pidx(qp->rhp->rdev.lldi.ports[0],
       qp->wq.sq.qid,
       t4_sq_host_wq_pidx(&qp->wq),
       t4_sq_wq_size(&qp->wq));
  if (ret) {
   pr_err("%s: Fatal error - DB overflow recovery failed - error syncing SQ qid %u\n",
          pci_name(ctx->lldi.pdev), qp->wq.sq.qid);
   spin_unlock(&qp->lock);
   xa_unlock_irq(&qp->rhp->qps);
   return;
  }
  qp->wq.sq.wq_pidx_inc = 0;

  ret = cxgb4_sync_txq_pidx(qp->rhp->rdev.lldi.ports[0],
       qp->wq.rq.qid,
       t4_rq_host_wq_pidx(&qp->wq),
       t4_rq_wq_size(&qp->wq));

  if (ret) {
   pr_err("%s: Fatal error - DB overflow recovery failed - error syncing RQ qid %u\n",
          pci_name(ctx->lldi.pdev), qp->wq.rq.qid);
   spin_unlock(&qp->lock);
   xa_unlock_irq(&qp->rhp->qps);
   return;
  }
  qp->wq.rq.wq_pidx_inc = 0;
  spin_unlock(&qp->lock);
  xa_unlock_irq(&qp->rhp->qps);


  while (cxgb4_dbfifo_count(qp->rhp->rdev.lldi.ports[0], 1) > 0) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   schedule_timeout(usecs_to_jiffies(10));
  }
 }
}
