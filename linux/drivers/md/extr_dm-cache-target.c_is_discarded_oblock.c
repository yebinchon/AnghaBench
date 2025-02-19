
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int lock; int discard_bitset; } ;
typedef int dm_oblock_t ;


 int from_dblock (int ) ;
 int oblock_to_dblock (struct cache*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static bool is_discarded_oblock(struct cache *cache, dm_oblock_t b)
{
 int r;
 unsigned long flags;

 spin_lock_irqsave(&cache->lock, flags);
 r = test_bit(from_dblock(oblock_to_dblock(cache, b)),
       cache->discard_bitset);
 spin_unlock_irqrestore(&cache->lock, flags);

 return r;
}
