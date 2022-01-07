
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int freelist_wait; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int prepare_to_wait (int *,int *,int ) ;
 int wait ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;

__attribute__((used)) static void writecache_wait_on_freelist(struct dm_writecache *wc)
{
 DEFINE_WAIT(wait);

 prepare_to_wait(&wc->freelist_wait, &wait, TASK_UNINTERRUPTIBLE);
 wc_unlock(wc);
 io_schedule();
 finish_wait(&wc->freelist_wait, &wait);
 wc_lock(wc);
}
