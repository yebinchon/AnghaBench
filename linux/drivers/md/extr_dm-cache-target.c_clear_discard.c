
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int lock; int discard_bitset; } ;
typedef int dm_dblock_t ;


 int clear_bit (int ,int ) ;
 int from_dblock (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void clear_discard(struct cache *cache, dm_dblock_t b)
{
 unsigned long flags;

 spin_lock_irqsave(&cache->lock, flags);
 clear_bit(from_dblock(b), cache->discard_bitset);
 spin_unlock_irqrestore(&cache->lock, flags);
}
