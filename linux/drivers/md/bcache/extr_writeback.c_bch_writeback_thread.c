
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; struct cache_set* c; } ;
struct TYPE_3__ {int keys; } ;
struct cached_dev {unsigned int writeback_delay; scalar_t__ writeback_write_wq; int writeback_rate; TYPE_2__ disk; int writeback_lock; int sb; int has_dirty; TYPE_1__ writeback_keys; int writeback_running; } ;
struct cache_set {int gc_after_writeback; int flags; } ;


 int BCACHE_DEV_DETACHING ;
 int BCH_DO_AUTO_GC ;
 int BCH_ENABLE_AUTO_GC ;
 int BDEV_STATE_CLEAN ;
 int CACHE_SET_IO_DISABLE ;
 unsigned int HZ ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int SET_BDEV_STATE (int *,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int bch_ratelimit_reset (int *) ;
 int bch_write_bdev_super (struct cached_dev*,int *) ;
 int cached_dev_put (struct cached_dev*) ;
 int destroy_workqueue (scalar_t__) ;
 int down_write (int *) ;
 int flush_workqueue (scalar_t__) ;
 int force_wake_up_gc (struct cache_set*) ;
 scalar_t__ kthread_should_stop () ;
 int read_dirty (struct cached_dev*) ;
 int refill_dirty (struct cached_dev*) ;
 int schedule () ;
 unsigned int schedule_timeout_interruptible (unsigned int) ;
 int set_current_state (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_write (int *) ;
 int wait_for_kthread_stop () ;

__attribute__((used)) static int bch_writeback_thread(void *arg)
{
 struct cached_dev *dc = arg;
 struct cache_set *c = dc->disk.c;
 bool searched_full_index;

 bch_ratelimit_reset(&dc->writeback_rate);

 while (!kthread_should_stop() &&
        !test_bit(CACHE_SET_IO_DISABLE, &c->flags)) {
  down_write(&dc->writeback_lock);
  set_current_state(TASK_INTERRUPTIBLE);







  if (!test_bit(BCACHE_DEV_DETACHING, &dc->disk.flags) &&
      (!atomic_read(&dc->has_dirty) || !dc->writeback_running)) {
   up_write(&dc->writeback_lock);

   if (kthread_should_stop() ||
       test_bit(CACHE_SET_IO_DISABLE, &c->flags)) {
    set_current_state(TASK_RUNNING);
    break;
   }

   schedule();
   continue;
  }
  set_current_state(TASK_RUNNING);

  searched_full_index = refill_dirty(dc);

  if (searched_full_index &&
      RB_EMPTY_ROOT(&dc->writeback_keys.keys)) {
   atomic_set(&dc->has_dirty, 0);
   SET_BDEV_STATE(&dc->sb, BDEV_STATE_CLEAN);
   bch_write_bdev_super(dc, ((void*)0));






   if (test_bit(BCACHE_DEV_DETACHING, &dc->disk.flags)) {
    up_write(&dc->writeback_lock);
    break;
   }
   if (c->gc_after_writeback ==
       (BCH_ENABLE_AUTO_GC|BCH_DO_AUTO_GC)) {
    c->gc_after_writeback &= ~BCH_DO_AUTO_GC;
    force_wake_up_gc(c);
   }
  }

  up_write(&dc->writeback_lock);

  read_dirty(dc);

  if (searched_full_index) {
   unsigned int delay = dc->writeback_delay * HZ;

   while (delay &&
          !kthread_should_stop() &&
          !test_bit(CACHE_SET_IO_DISABLE, &c->flags) &&
          !test_bit(BCACHE_DEV_DETACHING, &dc->disk.flags))
    delay = schedule_timeout_interruptible(delay);

   bch_ratelimit_reset(&dc->writeback_rate);
  }
 }

 if (dc->writeback_write_wq) {
  flush_workqueue(dc->writeback_write_wq);
  destroy_workqueue(dc->writeback_write_wq);
 }
 cached_dev_put(dc);
 wait_for_kthread_stop();

 return 0;
}
