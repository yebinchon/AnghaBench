
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;
typedef enum rdma_nldev_print_type { ____Placeholder_rdma_nldev_print_type } rdma_nldev_print_type ;


 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_DRIVER_U64 ;
 int RDMA_NLDEV_ATTR_PAD ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ put_driver_name_print_type (struct sk_buff*,char const*,int) ;

__attribute__((used)) static int _rdma_nl_put_driver_u64(struct sk_buff *msg, const char *name,
       enum rdma_nldev_print_type print_type,
       u64 value)
{
 if (put_driver_name_print_type(msg, name, print_type))
  return -EMSGSIZE;
 if (nla_put_u64_64bit(msg, RDMA_NLDEV_ATTR_DRIVER_U64, value,
         RDMA_NLDEV_ATTR_PAD))
  return -EMSGSIZE;

 return 0;
}
