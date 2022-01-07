
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int discard_count; } ;
struct cache {int lock; int discard_bitset; TYPE_1__ stats; int discard_nr_blocks; } ;
typedef int dm_dblock_t ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ from_dblock (int ) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_discard(struct cache *cache, dm_dblock_t b)
{
 unsigned long flags;

 BUG_ON(from_dblock(b) >= from_dblock(cache->discard_nr_blocks));
 atomic_inc(&cache->stats.discard_count);

 spin_lock_irqsave(&cache->lock, flags);
 set_bit(from_dblock(b), cache->discard_bitset);
 spin_unlock_irqrestore(&cache->lock, flags);
}
