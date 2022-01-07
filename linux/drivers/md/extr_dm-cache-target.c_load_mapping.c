
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cache {int policy; int dirty_bitset; int nr_dirty; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int atomic_inc (int *) ;
 int clear_bit (int ,int ) ;
 int from_cblock (int ) ;
 int policy_load_mapping (int ,int ,int ,int,int ,int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int load_mapping(void *context, dm_oblock_t oblock, dm_cblock_t cblock,
   bool dirty, uint32_t hint, bool hint_valid)
{
 int r;
 struct cache *cache = context;

 if (dirty) {
  set_bit(from_cblock(cblock), cache->dirty_bitset);
  atomic_inc(&cache->nr_dirty);
 } else
  clear_bit(from_cblock(cblock), cache->dirty_bitset);

 r = policy_load_mapping(cache->policy, oblock, cblock, dirty, hint, hint_valid);
 if (r)
  return r;

 return 0;
}
