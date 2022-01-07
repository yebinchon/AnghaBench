
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct TYPE_6__ {int lock; } ;
struct ib_device {TYPE_3__ cache; TYPE_2__* port_data; } ;
struct TYPE_4__ {int subnet_prefix; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;


 int EINVAL ;
 int rdma_is_port_valid (struct ib_device*,size_t) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int ib_get_cached_subnet_prefix(struct ib_device *device,
    u8 port_num,
    u64 *sn_pfx)
{
 unsigned long flags;

 if (!rdma_is_port_valid(device, port_num))
  return -EINVAL;

 read_lock_irqsave(&device->cache.lock, flags);
 *sn_pfx = device->port_data[port_num].cache.subnet_prefix;
 read_unlock_irqrestore(&device->cache.lock, flags);

 return 0;
}
