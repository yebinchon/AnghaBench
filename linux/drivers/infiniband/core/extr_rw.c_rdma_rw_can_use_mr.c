
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int dummy; } ;


 scalar_t__ rdma_protocol_iwarp (struct ib_device*,int ) ;
 int rdma_rw_force_mr ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool rdma_rw_can_use_mr(struct ib_device *dev, u8 port_num)
{
 if (rdma_protocol_iwarp(dev, port_num))
  return 1;
 if (unlikely(rdma_rw_force_mr))
  return 1;
 return 0;
}
