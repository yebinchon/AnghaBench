
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int check_if_tick_bio_needed (struct cache*,struct bio*) ;
 int clear_discard (struct cache*,int ) ;
 int oblock_to_dblock (struct cache*,int ) ;
 int remap_to_cache (struct cache*,struct bio*,int ) ;
 int set_dirty (struct cache*,int ) ;

__attribute__((used)) static void remap_to_cache_dirty(struct cache *cache, struct bio *bio,
     dm_oblock_t oblock, dm_cblock_t cblock)
{
 check_if_tick_bio_needed(cache, bio);
 remap_to_cache(cache, bio, cblock);
 if (bio_data_dir(bio) == WRITE) {
  set_dirty(cache, cblock);
  clear_discard(cache, oblock_to_dblock(cache, oblock));
 }
}
