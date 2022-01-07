
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct t3_cqe {int dummy; } ;
struct t3_cq {int size_log2; struct t3_cqe* queue; scalar_t__ rptr; int cqid; } ;
struct rdma_cq_op {int op; scalar_t__ credits; int id; } ;
struct cxio_rdev {int dev_name; TYPE_1__* t3cdev_p; } ;
typedef enum t3_cq_opcode { ____Placeholder_t3_cq_opcode } t3_cq_opcode ;
struct TYPE_2__ {int (* ctl ) (TYPE_1__*,int ,struct rdma_cq_op*) ;} ;


 int CQ_CREDIT_UPDATE ;
 int CQ_VLD_ENTRY (scalar_t__,int ,struct t3_cqe*) ;
 int EIO ;
 int Q_PTR2IDX (scalar_t__,int ) ;
 int RDMA_CQ_OP ;
 int pr_err (char*,int ) ;
 int stub1 (TYPE_1__*,int ,struct rdma_cq_op*) ;
 int udelay (int) ;

int cxio_hal_cq_op(struct cxio_rdev *rdev_p, struct t3_cq *cq,
     enum t3_cq_opcode op, u32 credit)
{
 int ret;
 struct t3_cqe *cqe;
 u32 rptr;

 struct rdma_cq_op setup;
 setup.id = cq->cqid;
 setup.credits = (op == CQ_CREDIT_UPDATE) ? credit : 0;
 setup.op = op;
 ret = rdev_p->t3cdev_p->ctl(rdev_p->t3cdev_p, RDMA_CQ_OP, &setup);

 if ((ret < 0) || (op == CQ_CREDIT_UPDATE))
  return ret;






 if (Q_PTR2IDX((cq->rptr), cq->size_log2) != ret) {
  int i=0;

  rptr = cq->rptr;





  while (Q_PTR2IDX((rptr+1), cq->size_log2) != ret)
   rptr++;






  cqe = cq->queue + Q_PTR2IDX(rptr, cq->size_log2);
  while (!CQ_VLD_ENTRY(rptr, cq->size_log2, cqe)) {
   udelay(1);
   if (i++ > 1000000) {
    pr_err("%s: stalled rnic\n", rdev_p->dev_name);
    return -EIO;
   }
  }

  return 1;
 }

 return 0;
}
