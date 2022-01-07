
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {int cons; int prod; int db; TYPE_1__ db_data; } ;
struct qedr_qp {TYPE_2__ sq; TYPE_2__ rq; int prev_wqe_size; } ;
struct qedr_dev {int ibdev; } ;
typedef enum qed_roce_qp_state { ____Placeholder_qed_roce_qp_state } qed_roce_qp_state ;


 int DP_NOTICE (struct qedr_dev*,char*,int ,int ,int ,int ) ;
 int EINVAL ;






 int qedr_reset_qp_hwq_info (TYPE_2__*) ;
 int rdma_protocol_roce (int *,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int qedr_update_qp_state(struct qedr_dev *dev,
    struct qedr_qp *qp,
    enum qed_roce_qp_state cur_state,
    enum qed_roce_qp_state new_state)
{
 int status = 0;

 if (new_state == cur_state)
  return 0;

 switch (cur_state) {
 case 131:
  switch (new_state) {
  case 132:
   qp->prev_wqe_size = 0;
   qedr_reset_qp_hwq_info(&qp->sq);
   qedr_reset_qp_hwq_info(&qp->rq);
   break;
  default:
   status = -EINVAL;
   break;
  }
  break;
 case 132:
  switch (new_state) {
  case 130:




   if (rdma_protocol_roce(&dev->ibdev, 1)) {
    writel(qp->rq.db_data.raw, qp->rq.db);
   }
   break;
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  }
  break;
 case 130:

  switch (new_state) {
  case 129:
   break;
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  }
  break;
 case 129:

  switch (new_state) {
  case 128:
   break;
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  }
  break;
 case 128:

  switch (new_state) {
  case 129:
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  }
  break;
 case 133:

  switch (new_state) {
  case 131:
   if ((qp->rq.prod != qp->rq.cons) ||
       (qp->sq.prod != qp->sq.cons)) {
    DP_NOTICE(dev,
       "Error->Reset with rq/sq not empty rq.prod=%x rq.cons=%x sq.prod=%x sq.cons=%x\n",
       qp->rq.prod, qp->rq.cons, qp->sq.prod,
       qp->sq.cons);
    status = -EINVAL;
   }
   break;
  default:
   status = -EINVAL;
   break;
  }
  break;
 default:
  status = -EINVAL;
  break;
 }

 return status;
}
