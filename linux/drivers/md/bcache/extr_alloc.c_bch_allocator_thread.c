
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bucket_size; } ;
struct cache {int free_inc; TYPE_2__* set; int invalidate_needs_gc; TYPE_1__ sb; int bdev; scalar_t__ discard; } ;
struct TYPE_4__ {int sb; int prio_blocked; scalar_t__ gc_mark_valid; int bucket_wait; int btree_cache_wait; int bucket_lock; } ;


 scalar_t__ CACHE_SYNC (int *) ;
 int GFP_KERNEL ;
 int allocator_wait (struct cache*,int) ;
 int atomic_read (int *) ;
 int bch_allocator_push (struct cache*,long) ;
 int bch_prio_write (struct cache*) ;
 int blkdev_issue_discard (int ,int ,int ,int ,int ) ;
 int bucket_to_sector (TYPE_2__*,long) ;
 int fifo_full (int *) ;
 int fifo_pop (int *,long) ;
 int invalidate_buckets (struct cache*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_kthread_stop () ;
 int wake_up (int *) ;

__attribute__((used)) static int bch_allocator_thread(void *arg)
{
 struct cache *ca = arg;

 mutex_lock(&ca->set->bucket_lock);

 while (1) {





  while (1) {
   long bucket;

   if (!fifo_pop(&ca->free_inc, bucket))
    break;

   if (ca->discard) {
    mutex_unlock(&ca->set->bucket_lock);
    blkdev_issue_discard(ca->bdev,
     bucket_to_sector(ca->set, bucket),
     ca->sb.bucket_size, GFP_KERNEL, 0);
    mutex_lock(&ca->set->bucket_lock);
   }

   allocator_wait(ca, bch_allocator_push(ca, bucket));
   wake_up(&ca->set->btree_cache_wait);
   wake_up(&ca->set->bucket_wait);
  }







retry_invalidate:
  allocator_wait(ca, ca->set->gc_mark_valid &&
          !ca->invalidate_needs_gc);
  invalidate_buckets(ca);





  allocator_wait(ca, !atomic_read(&ca->set->prio_blocked));
  if (CACHE_SYNC(&ca->set->sb)) {
   if (!fifo_full(&ca->free_inc))
    goto retry_invalidate;

   bch_prio_write(ca);
  }
 }
out:
 wait_for_kthread_stop();
 return 0;
}
