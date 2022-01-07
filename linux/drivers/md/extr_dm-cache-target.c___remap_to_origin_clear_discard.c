
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;


 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int check_if_tick_bio_needed (struct cache*,struct bio*) ;
 int clear_discard (struct cache*,int ) ;
 int oblock_to_dblock (struct cache*,int ) ;
 int remap_to_origin (struct cache*,struct bio*) ;

__attribute__((used)) static void __remap_to_origin_clear_discard(struct cache *cache, struct bio *bio,
         dm_oblock_t oblock, bool bio_has_pbd)
{
 if (bio_has_pbd)
  check_if_tick_bio_needed(cache, bio);
 remap_to_origin(cache, bio);
 if (bio_data_dir(bio) == WRITE)
  clear_discard(cache, oblock_to_dblock(cache, oblock));
}
