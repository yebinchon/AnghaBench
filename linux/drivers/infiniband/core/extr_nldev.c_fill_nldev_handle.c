
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ib_device {int dev; int index; } ;


 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_DEV_INDEX ;
 int RDMA_NLDEV_ATTR_DEV_NAME ;
 int dev_name (int *) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int fill_nldev_handle(struct sk_buff *msg, struct ib_device *device)
{
 if (nla_put_u32(msg, RDMA_NLDEV_ATTR_DEV_INDEX, device->index))
  return -EMSGSIZE;
 if (nla_put_string(msg, RDMA_NLDEV_ATTR_DEV_NAME,
      dev_name(&device->dev)))
  return -EMSGSIZE;

 return 0;
}
