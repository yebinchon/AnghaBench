
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;


 int RDMA_NLDEV_PRINT_TYPE_UNSPEC ;
 int _rdma_nl_put_driver_u64 (struct sk_buff*,char const*,int ,int ) ;

int rdma_nl_put_driver_u64(struct sk_buff *msg, const char *name, u64 value)
{
 return _rdma_nl_put_driver_u64(msg, name, RDMA_NLDEV_PRINT_TYPE_UNSPEC,
           value);
}
