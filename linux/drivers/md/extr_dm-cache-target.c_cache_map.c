
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct cache* private; } ;
struct cache {int committer; int origin_blocks; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int accounted_begin (struct cache*,struct bio*) ;
 int defer_bio (struct cache*,struct bio*) ;
 scalar_t__ discard_or_flush (struct bio*) ;
 scalar_t__ from_oblock (int ) ;
 int get_bio_block (struct cache*,struct bio*) ;
 int init_per_bio_data (struct bio*) ;
 int map_bio (struct cache*,struct bio*,int ,int*) ;
 int remap_to_origin (struct cache*,struct bio*) ;
 int schedule_commit (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cache_map(struct dm_target *ti, struct bio *bio)
{
 struct cache *cache = ti->private;

 int r;
 bool commit_needed;
 dm_oblock_t block = get_bio_block(cache, bio);

 init_per_bio_data(bio);
 if (unlikely(from_oblock(block) >= from_oblock(cache->origin_blocks))) {





  remap_to_origin(cache, bio);
  accounted_begin(cache, bio);
  return DM_MAPIO_REMAPPED;
 }

 if (discard_or_flush(bio)) {
  defer_bio(cache, bio);
  return DM_MAPIO_SUBMITTED;
 }

 r = map_bio(cache, bio, block, &commit_needed);
 if (commit_needed)
  schedule_commit(&cache->committer);

 return r;
}
