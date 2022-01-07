
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef enum rdma_nldev_print_type { ____Placeholder_rdma_nldev_print_type } rdma_nldev_print_type ;


 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_DRIVER_PRINT_TYPE ;
 int RDMA_NLDEV_ATTR_DRIVER_STRING ;
 int RDMA_NLDEV_PRINT_TYPE_UNSPEC ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,char const*) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int put_driver_name_print_type(struct sk_buff *msg, const char *name,
          enum rdma_nldev_print_type print_type)
{
 if (nla_put_string(msg, RDMA_NLDEV_ATTR_DRIVER_STRING, name))
  return -EMSGSIZE;
 if (print_type != RDMA_NLDEV_PRINT_TYPE_UNSPEC &&
     nla_put_u8(msg, RDMA_NLDEV_ATTR_DRIVER_PRINT_TYPE, print_type))
  return -EMSGSIZE;

 return 0;
}
