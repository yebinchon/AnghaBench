
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int task; } ;
struct rxe_qp {TYPE_1__ req; scalar_t__ is_user; int valid; } ;
struct ib_send_wr {int dummy; } ;
struct ib_qp {int dummy; } ;


 int EINVAL ;
 scalar_t__ QP_STATE_READY ;
 int rxe_post_send_kernel (struct rxe_qp*,struct ib_send_wr const*,struct ib_send_wr const**) ;
 int rxe_run_task (int *,int ) ;
 struct rxe_qp* to_rqp (struct ib_qp*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rxe_post_send(struct ib_qp *ibqp, const struct ib_send_wr *wr,
    const struct ib_send_wr **bad_wr)
{
 struct rxe_qp *qp = to_rqp(ibqp);

 if (unlikely(!qp->valid)) {
  *bad_wr = wr;
  return -EINVAL;
 }

 if (unlikely(qp->req.state < QP_STATE_READY)) {
  *bad_wr = wr;
  return -EINVAL;
 }

 if (qp->is_user) {

  rxe_run_task(&qp->req.task, 0);
  return 0;
 } else
  return rxe_post_send_kernel(qp, wr, bad_wr);
}
