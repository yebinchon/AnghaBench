
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* query_pkey ) (struct ib_device*,int ,int ,int *) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int EINVAL ;
 int rdma_is_port_valid (struct ib_device*,int ) ;
 int stub1 (struct ib_device*,int ,int ,int *) ;

int ib_query_pkey(struct ib_device *device,
    u8 port_num, u16 index, u16 *pkey)
{
 if (!rdma_is_port_valid(device, port_num))
  return -EINVAL;

 return device->ops.query_pkey(device, port_num, index, pkey);
}
