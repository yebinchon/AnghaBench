
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {TYPE_2__* prev; TYPE_1__* next; } ;
struct dm_writecache {int dev; int endio_list_lock; struct list_head endio_list; } ;
struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_3__ {struct list_head* prev; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int READ ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int WC_MODE_FUA (struct dm_writecache*) ;
 scalar_t__ WC_MODE_PMEM (struct dm_writecache*) ;
 int __writecache_endio_pmem (struct dm_writecache*,struct list_head*) ;
 int __writecache_endio_ssd (struct dm_writecache*,struct list_head*) ;
 int kthread_should_stop () ;
 int list_empty (struct list_head*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ unlikely (int ) ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;
 int writecache_commit_flushed (struct dm_writecache*) ;
 int writecache_disk_flush (struct dm_writecache*,int ) ;
 int writecache_wait_for_ios (struct dm_writecache*,int ) ;

__attribute__((used)) static int writecache_endio_thread(void *data)
{
 struct dm_writecache *wc = data;

 while (1) {
  struct list_head list;

  raw_spin_lock_irq(&wc->endio_list_lock);
  if (!list_empty(&wc->endio_list))
   goto pop_from_list;
  set_current_state(TASK_INTERRUPTIBLE);
  raw_spin_unlock_irq(&wc->endio_list_lock);

  if (unlikely(kthread_should_stop())) {
   set_current_state(TASK_RUNNING);
   break;
  }

  schedule();

  continue;

pop_from_list:
  list = wc->endio_list;
  list.next->prev = list.prev->next = &list;
  INIT_LIST_HEAD(&wc->endio_list);
  raw_spin_unlock_irq(&wc->endio_list_lock);

  if (!WC_MODE_FUA(wc))
   writecache_disk_flush(wc, wc->dev);

  wc_lock(wc);

  if (WC_MODE_PMEM(wc)) {
   __writecache_endio_pmem(wc, &list);
  } else {
   __writecache_endio_ssd(wc, &list);
   writecache_wait_for_ios(wc, READ);
  }

  writecache_commit_flushed(wc);

  wc_unlock(wc);
 }

 return 0;
}
