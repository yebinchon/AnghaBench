
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct ib_pkey_cache {int table_len; scalar_t__* table; } ;
struct TYPE_6__ {int lock; } ;
struct ib_device {TYPE_3__ cache; TYPE_2__* port_data; } ;
struct TYPE_4__ {struct ib_pkey_cache* pkey; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;


 int EINVAL ;
 int ENOENT ;
 int rdma_is_port_valid (struct ib_device*,size_t) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int ib_find_exact_cached_pkey(struct ib_device *device,
         u8 port_num,
         u16 pkey,
         u16 *index)
{
 struct ib_pkey_cache *cache;
 unsigned long flags;
 int i;
 int ret = -ENOENT;

 if (!rdma_is_port_valid(device, port_num))
  return -EINVAL;

 read_lock_irqsave(&device->cache.lock, flags);

 cache = device->port_data[port_num].cache.pkey;

 *index = -1;

 for (i = 0; i < cache->table_len; ++i)
  if (cache->table[i] == pkey) {
   *index = i;
   ret = 0;
   break;
  }

 read_unlock_irqrestore(&device->cache.lock, flags);

 return ret;
}
