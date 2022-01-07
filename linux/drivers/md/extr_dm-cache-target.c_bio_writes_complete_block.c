
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {int sectors_per_block; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int SECTOR_SHIFT ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;

__attribute__((used)) static bool bio_writes_complete_block(struct cache *cache, struct bio *bio)
{
 return (bio_data_dir(bio) == WRITE) &&
  (bio->bi_iter.bi_size == (cache->sectors_per_block << SECTOR_SHIFT));
}
