
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int policy; int nr_dirty; int dirty_bitset; } ;
typedef int dm_cblock_t ;


 int atomic_inc (int *) ;
 int from_cblock (int ) ;
 int policy_set_dirty (int ,int ) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static void set_dirty(struct cache *cache, dm_cblock_t cblock)
{
 if (!test_and_set_bit(from_cblock(cblock), cache->dirty_bitset)) {
  atomic_inc(&cache->nr_dirty);
  policy_set_dirty(cache->policy, cblock);
 }
}
