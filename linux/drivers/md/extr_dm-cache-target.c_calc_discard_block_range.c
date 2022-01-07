
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {scalar_t__ discard_block_size; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef scalar_t__ sector_t ;
typedef int dm_dblock_t ;


 scalar_t__ bio_end_sector (struct bio*) ;
 int block_div (scalar_t__,scalar_t__) ;
 int dm_sector_div_up (scalar_t__,scalar_t__) ;
 int to_dblock (int ) ;

__attribute__((used)) static void calc_discard_block_range(struct cache *cache, struct bio *bio,
         dm_dblock_t *b, dm_dblock_t *e)
{
 sector_t sb = bio->bi_iter.bi_sector;
 sector_t se = bio_end_sector(bio);

 *b = to_dblock(dm_sector_div_up(sb, cache->discard_block_size));

 if (se - sb < cache->discard_block_size)
  *e = *b;
 else
  *e = to_dblock(block_div(se, cache->discard_block_size));
}
