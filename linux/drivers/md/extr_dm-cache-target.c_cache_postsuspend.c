
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct cache* private; } ;
struct TYPE_2__ {int in_flight; } ;
struct cache {TYPE_1__ tracker; int wq; int waker; int nr_io_migrations; } ;


 int BUG_ON (int ) ;
 scalar_t__ CM_WRITE ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int cancel_delayed_work (int *) ;
 int flush_workqueue (int ) ;
 scalar_t__ get_cache_mode (struct cache*) ;
 int prevent_background_work (struct cache*) ;
 int requeue_deferred_bios (struct cache*) ;
 int sync_metadata (struct cache*) ;

__attribute__((used)) static void cache_postsuspend(struct dm_target *ti)
{
 struct cache *cache = ti->private;

 prevent_background_work(cache);
 BUG_ON(atomic_read(&cache->nr_io_migrations));

 cancel_delayed_work(&cache->waker);
 flush_workqueue(cache->wq);
 WARN_ON(cache->tracker.in_flight);





 requeue_deferred_bios(cache);

 if (get_cache_mode(cache) == CM_WRITE)
  (void) sync_metadata(cache);
}
