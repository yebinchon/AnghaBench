
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {scalar_t__ low_water_blocks; int low_water_triggered; TYPE_1__* ti; int lock; int pool_md; } ;
typedef scalar_t__ dm_block_t ;
struct TYPE_2__ {int table; } ;


 int DMWARN (char*,int ) ;
 int dm_device_name (int ) ;
 int dm_table_event (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void check_low_water_mark(struct pool *pool, dm_block_t free_blocks)
{
 unsigned long flags;

 if (free_blocks <= pool->low_water_blocks && !pool->low_water_triggered) {
  DMWARN("%s: reached low water mark for data device: sending event.",
         dm_device_name(pool->pool_md));
  spin_lock_irqsave(&pool->lock, flags);
  pool->low_water_triggered = 1;
  spin_unlock_irqrestore(&pool->lock, flags);
  dm_table_event(pool->ti->table);
 }
}
