
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {scalar_t__ tick; } ;
struct dm_target {struct cache* private; } ;
struct cache {int need_tick_bio; int lock; int policy; } ;
struct bio {int dummy; } ;
typedef int blk_status_t ;


 int DM_ENDIO_DONE ;
 int accounted_complete (struct cache*,struct bio*) ;
 int bio_drop_shared_lock (struct cache*,struct bio*) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int policy_tick (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cache_end_io(struct dm_target *ti, struct bio *bio, blk_status_t *error)
{
 struct cache *cache = ti->private;
 unsigned long flags;
 struct per_bio_data *pb = get_per_bio_data(bio);

 if (pb->tick) {
  policy_tick(cache->policy, 0);

  spin_lock_irqsave(&cache->lock, flags);
  cache->need_tick_bio = 1;
  spin_unlock_irqrestore(&cache->lock, flags);
 }

 bio_drop_shared_lock(cache, bio);
 accounted_complete(cache, bio);

 return DM_ENDIO_DONE;
}
