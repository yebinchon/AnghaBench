
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ msix_cnt; } ;
struct qedr_dev {TYPE_2__ int_info; int cdev; TYPE_1__* ops; int num_cnq; } ;
struct TYPE_3__ {int (* rdma_set_rdma_int ) (int ,int ) ;int (* rdma_get_rdma_int ) (int ,TYPE_2__*) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,...) ;
 int QEDR_MSG_INIT ;
 int qedr_req_msix_irqs (struct qedr_dev*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static int qedr_setup_irqs(struct qedr_dev *dev)
{
 int rc;

 DP_DEBUG(dev, QEDR_MSG_INIT, "qedr_setup_irqs\n");


 rc = dev->ops->rdma_set_rdma_int(dev->cdev, dev->num_cnq);
 if (rc < 0)
  return rc;

 rc = dev->ops->rdma_get_rdma_int(dev->cdev, &dev->int_info);
 if (rc) {
  DP_DEBUG(dev, QEDR_MSG_INIT, "get_rdma_int failed\n");
  return rc;
 }

 if (dev->int_info.msix_cnt) {
  DP_DEBUG(dev, QEDR_MSG_INIT, "rdma msix_cnt = %d\n",
    dev->int_info.msix_cnt);
  rc = qedr_req_msix_irqs(dev);
  if (rc)
   return rc;
 }

 DP_DEBUG(dev, QEDR_MSG_INIT, "qedr_setup_irqs succeeded\n");

 return 0;
}
