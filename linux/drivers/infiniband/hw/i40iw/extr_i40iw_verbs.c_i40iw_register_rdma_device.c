
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_ib_device {int ibdev; } ;
struct i40iw_device {struct i40iw_ib_device* iwibdev; int netdev; } ;


 int ENOMEM ;
 int i40iw_attr_group ;
 struct i40iw_ib_device* i40iw_init_rdma_device (struct i40iw_device*) ;
 int ib_dealloc_device (int *) ;
 int ib_device_set_netdev (int *,int ,int) ;
 int ib_register_device (int *,char*) ;
 int rdma_set_device_sysfs_group (int *,int *) ;

int i40iw_register_rdma_device(struct i40iw_device *iwdev)
{
 int ret;
 struct i40iw_ib_device *iwibdev;

 iwdev->iwibdev = i40iw_init_rdma_device(iwdev);
 if (!iwdev->iwibdev)
  return -ENOMEM;
 iwibdev = iwdev->iwibdev;
 rdma_set_device_sysfs_group(&iwibdev->ibdev, &i40iw_attr_group);
 ret = ib_device_set_netdev(&iwibdev->ibdev, iwdev->netdev, 1);
 if (ret)
  goto error;

 ret = ib_register_device(&iwibdev->ibdev, "i40iw%d");
 if (ret)
  goto error;

 return 0;
error:
 ib_dealloc_device(&iwdev->iwibdev->ibdev);
 return ret;
}
