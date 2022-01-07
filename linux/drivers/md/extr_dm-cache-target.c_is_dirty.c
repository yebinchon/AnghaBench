
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dirty_bitset; } ;
typedef int dm_cblock_t ;


 int from_cblock (int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static bool is_dirty(struct cache *cache, dm_cblock_t b)
{
 return test_bit(from_cblock(b), cache->dirty_bitset);
}
