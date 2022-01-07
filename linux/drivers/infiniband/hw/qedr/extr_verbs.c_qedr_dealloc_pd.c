
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_pd {int pd_id; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_2__ {int (* rdma_dealloc_pd ) (int ,int ) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int ) ;
 int QEDR_MSG_INIT ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_pd* get_qedr_pd (struct ib_pd*) ;
 int stub1 (int ,int ) ;

void qedr_dealloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct qedr_dev *dev = get_qedr_dev(ibpd->device);
 struct qedr_pd *pd = get_qedr_pd(ibpd);

 DP_DEBUG(dev, QEDR_MSG_INIT, "Deallocating PD %d\n", pd->pd_id);
 dev->ops->rdma_dealloc_pd(dev->rdma_ctx, pd->pd_id);
}
