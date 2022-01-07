
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {struct pool* pool; } ;
struct pool {int sectors_per_block_shift; int sectors_per_block; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;
typedef int dm_block_t ;


 scalar_t__ block_size_is_power_of_two (struct pool*) ;
 int sector_div (int,int ) ;

__attribute__((used)) static dm_block_t get_bio_block(struct thin_c *tc, struct bio *bio)
{
 struct pool *pool = tc->pool;
 sector_t block_nr = bio->bi_iter.bi_sector;

 if (block_size_is_power_of_two(pool))
  block_nr >>= pool->sectors_per_block_shift;
 else
  (void) sector_div(block_nr, pool->sectors_per_block);

 return block_nr;
}
