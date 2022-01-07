
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {int policy; TYPE_1__* ti; int nr_dirty; int dirty_bitset; } ;
typedef int dm_cblock_t ;
struct TYPE_2__ {int table; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int dm_table_event (int ) ;
 int from_cblock (int ) ;
 int policy_clear_dirty (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void force_clear_dirty(struct cache *cache, dm_cblock_t cblock)
{
 if (test_and_clear_bit(from_cblock(cblock), cache->dirty_bitset)) {
  if (atomic_dec_return(&cache->nr_dirty) == 0)
   dm_table_event(cache->ti->table);
 }

 policy_clear_dirty(cache->policy, cblock);
}
