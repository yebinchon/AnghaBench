
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_dev {scalar_t__ gsi_ll2_handle; int rdma_ctx; TYPE_1__* ops; int gsi_ll2_mac_address; int cdev; } ;
struct TYPE_2__ {int (* ll2_set_mac_filter ) (int ,int ,int *) ;int (* ll2_terminate_connection ) (int ,scalar_t__) ;int (* ll2_release_connection ) (int ,scalar_t__) ;} ;


 int DP_ERR (struct qedr_dev*,char*,int) ;
 scalar_t__ QED_LL2_UNUSED_HANDLE ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (int ,scalar_t__) ;

__attribute__((used)) static int qedr_ll2_stop(struct qedr_dev *dev)
{
 int rc;

 if (dev->gsi_ll2_handle == QED_LL2_UNUSED_HANDLE)
  return 0;


 rc = dev->ops->ll2_set_mac_filter(dev->cdev,
       dev->gsi_ll2_mac_address, ((void*)0));

 rc = dev->ops->ll2_terminate_connection(dev->rdma_ctx,
      dev->gsi_ll2_handle);
 if (rc)
  DP_ERR(dev, "Failed to terminate LL2 connection (rc=%d)\n", rc);

 dev->ops->ll2_release_connection(dev->rdma_ctx, dev->gsi_ll2_handle);

 dev->gsi_ll2_handle = QED_LL2_UNUSED_HANDLE;

 return rc;
}
