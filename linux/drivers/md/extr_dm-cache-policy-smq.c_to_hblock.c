
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_blocks_per_hotspot_block; } ;
typedef int sector_t ;
typedef int dm_oblock_t ;


 int from_oblock (int ) ;
 int sector_div (int ,int ) ;
 int to_oblock (int ) ;

__attribute__((used)) static dm_oblock_t to_hblock(struct smq_policy *mq, dm_oblock_t b)
{
 sector_t r = from_oblock(b);
 (void) sector_div(r, mq->cache_blocks_per_hotspot_block);
 return to_oblock(r);
}
