
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int flush_on_suspend; int memory_map_size; int memory_map; int writeback_all; int writeback_wq; int writeback_work; int autocommit_timer; } ;
struct dm_target {struct dm_writecache* private; } ;


 scalar_t__ WC_MODE_PMEM (struct dm_writecache*) ;
 int del_timer_sync (int *) ;
 int flush_workqueue (int ) ;
 int persistent_memory_flush_cache (int ,int ) ;
 int queue_work (int ,int *) ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;
 int writecache_flush (struct dm_writecache*) ;
 int writecache_poison_lists (struct dm_writecache*) ;
 scalar_t__ writecache_wait_for_writeback (struct dm_writecache*) ;

__attribute__((used)) static void writecache_suspend(struct dm_target *ti)
{
 struct dm_writecache *wc = ti->private;
 bool flush_on_suspend;

 del_timer_sync(&wc->autocommit_timer);

 wc_lock(wc);
 writecache_flush(wc);
 flush_on_suspend = wc->flush_on_suspend;
 if (flush_on_suspend) {
  wc->flush_on_suspend = 0;
  wc->writeback_all++;
  queue_work(wc->writeback_wq, &wc->writeback_work);
 }
 wc_unlock(wc);

 flush_workqueue(wc->writeback_wq);

 wc_lock(wc);
 if (flush_on_suspend)
  wc->writeback_all--;
 while (writecache_wait_for_writeback(wc));

 if (WC_MODE_PMEM(wc))
  persistent_memory_flush_cache(wc->memory_map, wc->memory_map_size);

 writecache_poison_lists(wc);

 wc_unlock(wc);
}
