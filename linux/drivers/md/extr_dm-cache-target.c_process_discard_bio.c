
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ discard_passdown; } ;
struct cache {TYPE_1__ features; } ;
struct bio {int dummy; } ;
typedef scalar_t__ dm_dblock_t ;


 int bio_endio (struct bio*) ;
 int calc_discard_block_range (struct cache*,struct bio*,scalar_t__*,scalar_t__*) ;
 scalar_t__ from_dblock (scalar_t__) ;
 int generic_make_request (struct bio*) ;
 int remap_to_origin (struct cache*,struct bio*) ;
 int set_discard (struct cache*,scalar_t__) ;
 scalar_t__ to_dblock (scalar_t__) ;

__attribute__((used)) static bool process_discard_bio(struct cache *cache, struct bio *bio)
{
 dm_dblock_t b, e;




 calc_discard_block_range(cache, bio, &b, &e);
 while (b != e) {
  set_discard(cache, b);
  b = to_dblock(from_dblock(b) + 1);
 }

 if (cache->features.discard_passdown) {
  remap_to_origin(cache, bio);
  generic_make_request(bio);
 } else
  bio_endio(bio);

 return 0;
}
