
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct stripe_c {TYPE_2__* stripe; } ;
struct TYPE_6__ {int bi_size; scalar_t__ bi_sector; } ;
struct bio {TYPE_3__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_5__ {scalar_t__ physical_start; TYPE_1__* dev; } ;
struct TYPE_4__ {int bdev; } ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int stripe_map_range_sector (struct stripe_c*,scalar_t__,size_t,scalar_t__*) ;
 int to_bytes (scalar_t__) ;

__attribute__((used)) static int stripe_map_range(struct stripe_c *sc, struct bio *bio,
       uint32_t target_stripe)
{
 sector_t begin, end;

 stripe_map_range_sector(sc, bio->bi_iter.bi_sector,
    target_stripe, &begin);
 stripe_map_range_sector(sc, bio_end_sector(bio),
    target_stripe, &end);
 if (begin < end) {
  bio_set_dev(bio, sc->stripe[target_stripe].dev->bdev);
  bio->bi_iter.bi_sector = begin +
   sc->stripe[target_stripe].physical_start;
  bio->bi_iter.bi_size = to_bytes(end - begin);
  return DM_MAPIO_REMAPPED;
 } else {

  bio_endio(bio);
  return DM_MAPIO_SUBMITTED;
 }
}
