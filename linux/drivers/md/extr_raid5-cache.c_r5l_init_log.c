
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int queue_flags; } ;
struct r5l_payload_data_parity {int dummy; } ;
struct r5l_meta_block {int dummy; } ;
struct r5l_log {int need_cache_flush; int io_kc; int io_pool; int bs; int meta_pool; int stripe_in_journal_count; int stripe_in_journal_lock; int stripe_in_journal_list; int r5c_journal_mode; int disable_writeback_work; int deferred_io_work; int no_space_stripes_lock; int no_space_stripes; int no_mem_stripes; int iounit_wait; TYPE_2__* reclaim_thread; struct md_rdev* rdev; int big_stripe_tree; int tree_lock; int flush_bio; int finished_ios; int flushing_ios; int io_end_ios; int running_ios; int io_list_lock; int io_mutex; int uuid_checksum; } ;
struct r5conf {int raid_disks; TYPE_1__* mddev; int log; } ;
struct md_rdev {TYPE_3__* mddev; int bdev; } ;
typedef int __le32 ;
struct TYPE_6__ {int uuid; } ;
struct TYPE_5__ {int timeout; } ;
struct TYPE_4__ {int flags; } ;


 int BDEVNAME_SIZE ;
 int BIOSET_NEED_BVECS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int) ;
 int INIT_WORK (int *,int ) ;
 int KMEM_CACHE (int ,int ) ;
 int MD_HAS_JOURNAL ;
 int PAGE_SIZE ;
 int QUEUE_FLAG_WC ;
 int R5C_JOURNAL_MODE_WRITE_THROUGH ;
 int R5C_RECLAIM_WAKEUP_INTERVAL ;
 int R5L_POOL_SIZE ;
 int __GFP_NOWARN ;
 int atomic_set (int *,int ) ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdevname (int ,char*) ;
 int bio_init (int *,int *,int ) ;
 int bioset_exit (int *) ;
 int bioset_init (int *,int ,int ,int ) ;
 int crc32c_le (int ,int ,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct r5l_log*) ;
 int kmem_cache_destroy (int ) ;
 struct r5l_log* kzalloc (int,int ) ;
 TYPE_2__* md_register_thread (int ,TYPE_3__*,char*) ;
 int mdname (TYPE_1__*) ;
 int mempool_exit (int *) ;
 int mempool_init_page_pool (int *,int ,int ) ;
 int mempool_init_slab_pool (int *,int ,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ,int) ;
 int r5c_disable_writeback_async ;
 int r5l_io_unit ;
 int r5l_reclaim_thread ;
 int r5l_submit_io_async ;
 int rcu_assign_pointer (int ,struct r5l_log*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int r5l_init_log(struct r5conf *conf, struct md_rdev *rdev)
{
 struct request_queue *q = bdev_get_queue(rdev->bdev);
 struct r5l_log *log;
 char b[BDEVNAME_SIZE];
 int ret;

 pr_debug("md/raid:%s: using device %s as journal\n",
   mdname(conf->mddev), bdevname(rdev->bdev, b));

 if (PAGE_SIZE != 4096)
  return -EINVAL;
 if (sizeof(struct r5l_meta_block) +
     ((sizeof(struct r5l_payload_data_parity) + sizeof(__le32)) *
      conf->raid_disks) > PAGE_SIZE) {
  pr_err("md/raid:%s: write journal/cache doesn't work for array with %d disks\n",
         mdname(conf->mddev), conf->raid_disks);
  return -EINVAL;
 }

 log = kzalloc(sizeof(*log), GFP_KERNEL);
 if (!log)
  return -ENOMEM;
 log->rdev = rdev;

 log->need_cache_flush = test_bit(QUEUE_FLAG_WC, &q->queue_flags) != 0;

 log->uuid_checksum = crc32c_le(~0, rdev->mddev->uuid,
           sizeof(rdev->mddev->uuid));

 mutex_init(&log->io_mutex);

 spin_lock_init(&log->io_list_lock);
 INIT_LIST_HEAD(&log->running_ios);
 INIT_LIST_HEAD(&log->io_end_ios);
 INIT_LIST_HEAD(&log->flushing_ios);
 INIT_LIST_HEAD(&log->finished_ios);
 bio_init(&log->flush_bio, ((void*)0), 0);

 log->io_kc = KMEM_CACHE(r5l_io_unit, 0);
 if (!log->io_kc)
  goto io_kc;

 ret = mempool_init_slab_pool(&log->io_pool, R5L_POOL_SIZE, log->io_kc);
 if (ret)
  goto io_pool;

 ret = bioset_init(&log->bs, R5L_POOL_SIZE, 0, BIOSET_NEED_BVECS);
 if (ret)
  goto io_bs;

 ret = mempool_init_page_pool(&log->meta_pool, R5L_POOL_SIZE, 0);
 if (ret)
  goto out_mempool;

 spin_lock_init(&log->tree_lock);
 INIT_RADIX_TREE(&log->big_stripe_tree, GFP_NOWAIT | __GFP_NOWARN);

 log->reclaim_thread = md_register_thread(r5l_reclaim_thread,
       log->rdev->mddev, "reclaim");
 if (!log->reclaim_thread)
  goto reclaim_thread;
 log->reclaim_thread->timeout = R5C_RECLAIM_WAKEUP_INTERVAL;

 init_waitqueue_head(&log->iounit_wait);

 INIT_LIST_HEAD(&log->no_mem_stripes);

 INIT_LIST_HEAD(&log->no_space_stripes);
 spin_lock_init(&log->no_space_stripes_lock);

 INIT_WORK(&log->deferred_io_work, r5l_submit_io_async);
 INIT_WORK(&log->disable_writeback_work, r5c_disable_writeback_async);

 log->r5c_journal_mode = R5C_JOURNAL_MODE_WRITE_THROUGH;
 INIT_LIST_HEAD(&log->stripe_in_journal_list);
 spin_lock_init(&log->stripe_in_journal_lock);
 atomic_set(&log->stripe_in_journal_count, 0);

 rcu_assign_pointer(conf->log, log);

 set_bit(MD_HAS_JOURNAL, &conf->mddev->flags);
 return 0;

reclaim_thread:
 mempool_exit(&log->meta_pool);
out_mempool:
 bioset_exit(&log->bs);
io_bs:
 mempool_exit(&log->io_pool);
io_pool:
 kmem_cache_destroy(log->io_kc);
io_kc:
 kfree(log);
 return -EINVAL;
}
