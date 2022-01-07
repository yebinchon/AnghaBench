
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_recv_wr {TYPE_1__* wr_cqe; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {struct ib_cq* recv_cq; } ;
struct TYPE_2__ {int done; } ;
struct ib_drain_cqe {int done; TYPE_1__ cqe; } ;
struct ib_cq {scalar_t__ poll_ctx; } ;


 int HZ ;
 scalar_t__ IB_POLL_DIRECT ;
 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int WARN_ONCE (int,char*,int) ;
 int ib_drain_qp_done ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int ) ;
 int ib_post_recv (struct ib_qp*,struct ib_recv_wr*,int *) ;
 int ib_process_cq_direct (struct ib_cq*,int) ;
 int init_completion (int *) ;
 int wait_for_completion (int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static void __ib_drain_rq(struct ib_qp *qp)
{
 struct ib_cq *cq = qp->recv_cq;
 struct ib_qp_attr attr = { .qp_state = IB_QPS_ERR };
 struct ib_drain_cqe rdrain;
 struct ib_recv_wr rwr = {};
 int ret;

 ret = ib_modify_qp(qp, &attr, IB_QP_STATE);
 if (ret) {
  WARN_ONCE(ret, "failed to drain recv queue: %d\n", ret);
  return;
 }

 rwr.wr_cqe = &rdrain.cqe;
 rdrain.cqe.done = ib_drain_qp_done;
 init_completion(&rdrain.done);

 ret = ib_post_recv(qp, &rwr, ((void*)0));
 if (ret) {
  WARN_ONCE(ret, "failed to drain recv queue: %d\n", ret);
  return;
 }

 if (cq->poll_ctx == IB_POLL_DIRECT)
  while (wait_for_completion_timeout(&rdrain.done, HZ / 10) <= 0)
   ib_process_cq_direct(cq, -1);
 else
  wait_for_completion(&rdrain.done);
}
