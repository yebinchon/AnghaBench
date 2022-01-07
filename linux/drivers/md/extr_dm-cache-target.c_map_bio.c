
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct policy_work {scalar_t__ op; } ;
struct per_bio_data {scalar_t__ req_nr; } ;
struct TYPE_2__ {int demotion; } ;
struct cache {int committer; TYPE_1__ stats; int policy; } ;
struct bio {int bi_opf; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int BUG_ON (int) ;
 int DMERR_LIMIT (char*,int ,int) ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int ENOENT ;
 scalar_t__ POLICY_PROMOTE ;
 int REQ_FUA ;
 int WRITE ;
 int accounted_begin (struct cache*,struct bio*) ;
 int accounted_complete (struct cache*,struct bio*) ;
 int atomic_inc (int *) ;
 int bio_data_dir (struct bio*) ;
 int bio_detain_shared (struct cache*,int ,struct bio*) ;
 int bio_drop_shared_lock (struct cache*,struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 int cache_device_name (struct cache*) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int inc_hit_counter (struct cache*,struct bio*) ;
 int inc_miss_counter (struct cache*,struct bio*) ;
 int invalidate_start (struct cache*,int ,int ,struct bio*) ;
 int is_dirty (struct cache*,int ) ;
 int issue_after_commit (int *,struct bio*) ;
 int mg_start (struct cache*,struct policy_work*,struct bio*) ;
 scalar_t__ optimisable_bio (struct cache*,struct bio*,int ) ;
 scalar_t__ passthrough_mode (struct cache*) ;
 int policy_lookup (int ,int ,int *,int,int,int*) ;
 int policy_lookup_with_work (int ,int ,int *,int,int,struct policy_work**) ;
 int remap_to_cache_dirty (struct cache*,struct bio*,int ,int ) ;
 int remap_to_origin_and_cache (struct cache*,struct bio*,int ,int ) ;
 int remap_to_origin_clear_discard (struct cache*,struct bio*,int ) ;
 scalar_t__ unlikely (int) ;
 int wake_migration_worker (struct cache*) ;
 scalar_t__ writethrough_mode (struct cache*) ;

__attribute__((used)) static int map_bio(struct cache *cache, struct bio *bio, dm_oblock_t block,
     bool *commit_needed)
{
 int r, data_dir;
 bool rb, background_queued;
 dm_cblock_t cblock;

 *commit_needed = 0;

 rb = bio_detain_shared(cache, block, bio);
 if (!rb) {






  *commit_needed = 1;
  return DM_MAPIO_SUBMITTED;
 }

 data_dir = bio_data_dir(bio);

 if (optimisable_bio(cache, bio, block)) {
  struct policy_work *op = ((void*)0);

  r = policy_lookup_with_work(cache->policy, block, &cblock, data_dir, 1, &op);
  if (unlikely(r && r != -ENOENT)) {
   DMERR_LIMIT("%s: policy_lookup_with_work() failed with r = %d",
        cache_device_name(cache), r);
   bio_io_error(bio);
   return DM_MAPIO_SUBMITTED;
  }

  if (r == -ENOENT && op) {
   bio_drop_shared_lock(cache, bio);
   BUG_ON(op->op != POLICY_PROMOTE);
   mg_start(cache, op, bio);
   return DM_MAPIO_SUBMITTED;
  }
 } else {
  r = policy_lookup(cache->policy, block, &cblock, data_dir, 0, &background_queued);
  if (unlikely(r && r != -ENOENT)) {
   DMERR_LIMIT("%s: policy_lookup() failed with r = %d",
        cache_device_name(cache), r);
   bio_io_error(bio);
   return DM_MAPIO_SUBMITTED;
  }

  if (background_queued)
   wake_migration_worker(cache);
 }

 if (r == -ENOENT) {
  struct per_bio_data *pb = get_per_bio_data(bio);




  inc_miss_counter(cache, bio);
  if (pb->req_nr == 0) {
   accounted_begin(cache, bio);
   remap_to_origin_clear_discard(cache, bio, block);
  } else {




   bio_endio(bio);
   return DM_MAPIO_SUBMITTED;
  }
 } else {



  inc_hit_counter(cache, bio);





  if (passthrough_mode(cache)) {
   if (bio_data_dir(bio) == WRITE) {
    bio_drop_shared_lock(cache, bio);
    atomic_inc(&cache->stats.demotion);
    invalidate_start(cache, cblock, block, bio);
   } else
    remap_to_origin_clear_discard(cache, bio, block);
  } else {
   if (bio_data_dir(bio) == WRITE && writethrough_mode(cache) &&
       !is_dirty(cache, cblock)) {
    remap_to_origin_and_cache(cache, bio, block, cblock);
    accounted_begin(cache, bio);
   } else
    remap_to_cache_dirty(cache, bio, block, cblock);
  }
 }




 if (bio->bi_opf & REQ_FUA) {




  accounted_complete(cache, bio);
  issue_after_commit(&cache->committer, bio);
  *commit_needed = 1;
  return DM_MAPIO_SUBMITTED;
 }

 return DM_MAPIO_REMAPPED;
}
