
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int dummy; } ;


 int WARN_ON (int) ;
 int rdma_cap_ib_mad (struct ib_device const*,int ) ;
 scalar_t__ rdma_max_mad_size (struct ib_device const*,int ) ;

__attribute__((used)) static int verify_immutable(const struct ib_device *dev, u8 port)
{
 return WARN_ON(!rdma_cap_ib_mad(dev, port) &&
       rdma_max_mad_size(dev, port) != 0);
}
