
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct cached_dev {int writeback_running; int writeback_rate_update_seconds; int writeback_rate_update; TYPE_1__ disk; int writeback_thread; int writeback_write_wq; } ;


 int BCACHE_DEV_WB_RUNNING ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WARN_ON (int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int bch_writeback_queue (struct cached_dev*) ;
 int bch_writeback_thread ;
 int cached_dev_get (struct cached_dev*) ;
 int cached_dev_put (struct cached_dev*) ;
 int destroy_workqueue (int ) ;
 int kthread_create (int ,struct cached_dev*,char*) ;
 int schedule_delayed_work (int *,int) ;
 int test_and_set_bit (int ,int *) ;

int bch_cached_dev_writeback_start(struct cached_dev *dc)
{
 dc->writeback_write_wq = alloc_workqueue("bcache_writeback_wq",
      WQ_MEM_RECLAIM, 0);
 if (!dc->writeback_write_wq)
  return -ENOMEM;

 cached_dev_get(dc);
 dc->writeback_thread = kthread_create(bch_writeback_thread, dc,
           "bcache_writeback");
 if (IS_ERR(dc->writeback_thread)) {
  cached_dev_put(dc);
  destroy_workqueue(dc->writeback_write_wq);
  return PTR_ERR(dc->writeback_thread);
 }
 dc->writeback_running = 1;

 WARN_ON(test_and_set_bit(BCACHE_DEV_WB_RUNNING, &dc->disk.flags));
 schedule_delayed_work(&dc->writeback_rate_update,
         dc->writeback_rate_update_seconds * HZ);

 bch_writeback_queue(dc);

 return 0;
}
