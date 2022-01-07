
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int RDMA_NLDEV_PRINT_TYPE_HEX ;
 int _rdma_nl_put_driver_u32 (struct sk_buff*,char const*,int ,int ) ;

int rdma_nl_put_driver_u32_hex(struct sk_buff *msg, const char *name,
          u32 value)
{
 return _rdma_nl_put_driver_u32(msg, name, RDMA_NLDEV_PRINT_TYPE_HEX,
           value);
}
