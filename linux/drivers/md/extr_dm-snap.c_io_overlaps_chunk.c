
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_snapshot {TYPE_2__* store; } ;
struct TYPE_3__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int chunk_size; } ;


 int SECTOR_SHIFT ;

__attribute__((used)) static bool io_overlaps_chunk(struct dm_snapshot *s, struct bio *bio)
{
 return bio->bi_iter.bi_size ==
  (s->store->chunk_size << SECTOR_SHIFT);
}
