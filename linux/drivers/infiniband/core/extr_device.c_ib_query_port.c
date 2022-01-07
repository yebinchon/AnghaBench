
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int __ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int iw_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int rdma_is_port_valid (struct ib_device*,int ) ;
 scalar_t__ rdma_protocol_iwarp (struct ib_device*,int ) ;

int ib_query_port(struct ib_device *device,
    u8 port_num,
    struct ib_port_attr *port_attr)
{
 if (!rdma_is_port_valid(device, port_num))
  return -EINVAL;

 if (rdma_protocol_iwarp(device, port_num))
  return iw_query_port(device, port_num, port_attr);
 else
  return __ib_query_port(device, port_num, port_attr);
}
