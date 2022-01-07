
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_list {scalar_t__ size; } ;
struct dm_writecache {scalar_t__ max_writeback_jobs; scalar_t__ writeback_size; } ;


 scalar_t__ READ_ONCE (scalar_t__) ;
 int cond_resched () ;
 scalar_t__ unlikely (scalar_t__) ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;
 int writecache_wait_on_freelist (struct dm_writecache*) ;

__attribute__((used)) static void __writeback_throttle(struct dm_writecache *wc, struct writeback_list *wbl)
{
 if (unlikely(wc->max_writeback_jobs)) {
  if (READ_ONCE(wc->writeback_size) - wbl->size >= wc->max_writeback_jobs) {
   wc_lock(wc);
   while (wc->writeback_size - wbl->size >= wc->max_writeback_jobs)
    writecache_wait_on_freelist(wc);
   wc_unlock(wc);
  }
 }
 cond_resched();
}
