
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_dblock_t ;


 int block_div (int ,int ) ;
 int from_oblock (int ) ;
 int oblocks_per_dblock (struct cache*) ;
 int to_dblock (int ) ;

__attribute__((used)) static dm_dblock_t oblock_to_dblock(struct cache *cache, dm_oblock_t oblock)
{
 return to_dblock(block_div(from_oblock(oblock),
       oblocks_per_dblock(cache)));
}
