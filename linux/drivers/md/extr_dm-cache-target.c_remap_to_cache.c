
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cache {int sectors_per_block; int sectors_per_block_shift; TYPE_2__* cache_dev; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;
typedef int dm_cblock_t ;
struct TYPE_4__ {int bdev; } ;


 int bio_set_dev (struct bio*,int ) ;
 int block_size_is_power_of_two (struct cache*) ;
 int from_cblock (int ) ;
 int sector_div (int,int) ;

__attribute__((used)) static void remap_to_cache(struct cache *cache, struct bio *bio,
      dm_cblock_t cblock)
{
 sector_t bi_sector = bio->bi_iter.bi_sector;
 sector_t block = from_cblock(cblock);

 bio_set_dev(bio, cache->cache_dev->bdev);
 if (!block_size_is_power_of_two(cache))
  bio->bi_iter.bi_sector =
   (block * cache->sectors_per_block) +
   sector_div(bi_sector, cache->sectors_per_block);
 else
  bio->bi_iter.bi_sector =
   (block << cache->sectors_per_block_shift) |
   (bi_sector & (cache->sectors_per_block - 1));
}
