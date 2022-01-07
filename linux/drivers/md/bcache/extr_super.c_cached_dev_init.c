
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int io_opt; int raid_partial_stripes_expensive; } ;
struct request_queue {TYPE_7__* backing_dev_info; TYPE_1__ limits; } ;
struct io {int hash; int lru; } ;
struct TYPE_18__ {int stripe_size; TYPE_6__* disk; int cl; int kobj; } ;
struct TYPE_12__ {scalar_t__ data_offset; } ;
struct cached_dev {int sequential_cutoff; int io_hash; int io_disable; int stop_when_cache_set_failed; int error_limit; int io_errors; TYPE_9__ disk; TYPE_3__ sb; TYPE_8__* bdev; int partial_stripes_expensive; int io_lru; struct io* io; int accounting; int io_lock; int sb_write_mutex; int detach; int list; } ;
struct TYPE_17__ {TYPE_2__* bd_part; } ;
struct TYPE_16__ {int ra_pages; } ;
struct TYPE_15__ {TYPE_5__* queue; } ;
struct TYPE_14__ {TYPE_4__* backing_dev_info; } ;
struct TYPE_13__ {int ra_pages; } ;
struct TYPE_11__ {scalar_t__ nr_sects; } ;


 int BCH_CACHED_DEV_STOP_AUTO ;
 int DEFAULT_CACHED_DEV_ERROR_LIMIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RECENT_IO ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int atomic_set (int *,int ) ;
 int bcache_device_init (TYPE_9__*,unsigned int,scalar_t__) ;
 int bch_cache_accounting_init (int *,int *) ;
 int bch_cached_dev_ktype ;
 int bch_cached_dev_request_init (struct cached_dev*) ;
 int bch_cached_dev_writeback_init (struct cached_dev*) ;
 struct request_queue* bdev_get_queue (TYPE_8__*) ;
 int cached_dev_detach_finish ;
 int cached_dev_flush ;
 int closure_init (int *,int *) ;
 int hlist_add_head (int *,int) ;
 int kobject_init (int *,int *) ;
 int list_add (int *,int *) ;
 int max (int ,int ) ;
 int sema_init (int *,int) ;
 int set_closure_fn (int *,int ,int ) ;
 int spin_lock_init (int *) ;
 int system_wq ;

__attribute__((used)) static int cached_dev_init(struct cached_dev *dc, unsigned int block_size)
{
 int ret;
 struct io *io;
 struct request_queue *q = bdev_get_queue(dc->bdev);

 __module_get(THIS_MODULE);
 INIT_LIST_HEAD(&dc->list);
 closure_init(&dc->disk.cl, ((void*)0));
 set_closure_fn(&dc->disk.cl, cached_dev_flush, system_wq);
 kobject_init(&dc->disk.kobj, &bch_cached_dev_ktype);
 INIT_WORK(&dc->detach, cached_dev_detach_finish);
 sema_init(&dc->sb_write_mutex, 1);
 INIT_LIST_HEAD(&dc->io_lru);
 spin_lock_init(&dc->io_lock);
 bch_cache_accounting_init(&dc->accounting, &dc->disk.cl);

 dc->sequential_cutoff = 4 << 20;

 for (io = dc->io; io < dc->io + RECENT_IO; io++) {
  list_add(&io->lru, &dc->io_lru);
  hlist_add_head(&io->hash, dc->io_hash + RECENT_IO);
 }

 dc->disk.stripe_size = q->limits.io_opt >> 9;

 if (dc->disk.stripe_size)
  dc->partial_stripes_expensive =
   q->limits.raid_partial_stripes_expensive;

 ret = bcache_device_init(&dc->disk, block_size,
    dc->bdev->bd_part->nr_sects - dc->sb.data_offset);
 if (ret)
  return ret;

 dc->disk.disk->queue->backing_dev_info->ra_pages =
  max(dc->disk.disk->queue->backing_dev_info->ra_pages,
      q->backing_dev_info->ra_pages);

 atomic_set(&dc->io_errors, 0);
 dc->io_disable = 0;
 dc->error_limit = DEFAULT_CACHED_DEV_ERROR_LIMIT;

 dc->stop_when_cache_set_failed = BCH_CACHED_DEV_STOP_AUTO;

 bch_cached_dev_request_init(dc);
 bch_cached_dev_writeback_init(dc);
 return 0;
}
