
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int sectors_per_block; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int SECTOR_SHIFT ;

__attribute__((used)) static int io_overlaps_block(struct pool *pool, struct bio *bio)
{
 return bio->bi_iter.bi_size ==
  (pool->sectors_per_block << SECTOR_SHIFT);
}
