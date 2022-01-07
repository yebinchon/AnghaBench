
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_device {int dev; } ;
struct TYPE_2__ {int driver_id; int uverbs_no_driver_id_binding; int uverbs_abi_ver; } ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_client_nl_info {int port; int nl_msg; int * cdev; int abi; } ;


 int EINVAL ;
 int RDMA_NLDEV_ATTR_UVERBS_DRIVER_ID ;
 int nla_put_u32 (int ,int ,int ) ;

__attribute__((used)) static int ib_uverbs_get_nl_info(struct ib_device *ibdev, void *client_data,
     struct ib_client_nl_info *res)
{
 struct ib_uverbs_device *uverbs_dev = client_data;
 int ret;

 if (res->port != -1)
  return -EINVAL;

 res->abi = ibdev->ops.uverbs_abi_ver;
 res->cdev = &uverbs_dev->dev;







 if (!ibdev->ops.uverbs_no_driver_id_binding) {
  ret = nla_put_u32(res->nl_msg, RDMA_NLDEV_ATTR_UVERBS_DRIVER_ID,
      ibdev->ops.driver_id);
  if (ret)
   return ret;
 }
 return 0;
}
