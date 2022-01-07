
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_snapshot {TYPE_3__* store; TYPE_1__* cow; } ;
struct dm_exception {scalar_t__ old_chunk; int new_chunk; } ;
struct TYPE_5__ {int bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef scalar_t__ chunk_t ;
struct TYPE_6__ {int chunk_mask; } ;
struct TYPE_4__ {int bdev; } ;


 int bio_set_dev (struct bio*,int ) ;
 int chunk_to_sector (TYPE_3__*,scalar_t__) ;
 scalar_t__ dm_chunk_number (int ) ;

__attribute__((used)) static void remap_exception(struct dm_snapshot *s, struct dm_exception *e,
       struct bio *bio, chunk_t chunk)
{
 bio_set_dev(bio, s->cow->bdev);
 bio->bi_iter.bi_sector =
  chunk_to_sector(s->store, dm_chunk_number(e->new_chunk) +
    (chunk - e->old_chunk)) +
  (bio->bi_iter.bi_sector & s->store->chunk_mask);
}
