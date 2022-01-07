
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_qp {scalar_t__ qp_type; int qed_qp; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct TYPE_2__ {int (* rdma_destroy_qp ) (int ,int ) ;} ;


 scalar_t__ IB_QPT_GSI ;
 int qedr_cleanup_kernel (struct qedr_dev*,struct qedr_qp*) ;
 int qedr_cleanup_user (struct qedr_dev*,struct qedr_qp*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int qedr_free_qp_resources(struct qedr_dev *dev, struct qedr_qp *qp,
      struct ib_udata *udata)
{
 int rc = 0;

 if (qp->qp_type != IB_QPT_GSI) {
  rc = dev->ops->rdma_destroy_qp(dev->rdma_ctx, qp->qed_qp);
  if (rc)
   return rc;
 }

 if (udata)
  qedr_cleanup_user(dev, qp);
 else
  qedr_cleanup_kernel(dev, qp);

 return 0;
}
