
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {scalar_t__ dirty_bitmap; scalar_t__ dm_io; scalar_t__ dm_kcopyd; scalar_t__ memory_map; scalar_t__ entries; scalar_t__ ssd_dev; scalar_t__ dev; scalar_t__ writeback_wq; int copy_pool; int bio_set; scalar_t__ flush_thread; scalar_t__ endio_thread; } ;
struct dm_target {struct dm_writecache* private; } ;


 scalar_t__ WC_MODE_PMEM (struct dm_writecache*) ;
 int bioset_exit (int *) ;
 int destroy_workqueue (scalar_t__) ;
 int dm_io_client_destroy (scalar_t__) ;
 int dm_kcopyd_client_destroy (scalar_t__) ;
 int dm_put_device (struct dm_target*,scalar_t__) ;
 int kfree (struct dm_writecache*) ;
 int kthread_stop (scalar_t__) ;
 int mempool_exit (int *) ;
 int persistent_memory_release (struct dm_writecache*) ;
 int vfree (scalar_t__) ;

__attribute__((used)) static void writecache_dtr(struct dm_target *ti)
{
 struct dm_writecache *wc = ti->private;

 if (!wc)
  return;

 if (wc->endio_thread)
  kthread_stop(wc->endio_thread);

 if (wc->flush_thread)
  kthread_stop(wc->flush_thread);

 bioset_exit(&wc->bio_set);

 mempool_exit(&wc->copy_pool);

 if (wc->writeback_wq)
  destroy_workqueue(wc->writeback_wq);

 if (wc->dev)
  dm_put_device(ti, wc->dev);

 if (wc->ssd_dev)
  dm_put_device(ti, wc->ssd_dev);

 if (wc->entries)
  vfree(wc->entries);

 if (wc->memory_map) {
  if (WC_MODE_PMEM(wc))
   persistent_memory_release(wc);
  else
   vfree(wc->memory_map);
 }

 if (wc->dm_kcopyd)
  dm_kcopyd_client_destroy(wc->dm_kcopyd);

 if (wc->dm_io)
  dm_io_client_destroy(wc->dm_io);

 if (wc->dirty_bitmap)
  vfree(wc->dirty_bitmap);

 kfree(wc);
}
