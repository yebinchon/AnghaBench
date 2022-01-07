
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int sleeping; } ;


 int MB_POLL_DELAY ;
 int kthread_should_stop () ;
 int media_bay_count ;
 int media_bay_step (int) ;
 TYPE_1__* media_bays ;
 int msleep_interruptible (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int media_bay_task(void *x)
{
 int i;

 while (!kthread_should_stop()) {
  for (i = 0; i < media_bay_count; ++i) {
   mutex_lock(&media_bays[i].lock);
   if (!media_bays[i].sleeping)
    media_bay_step(i);
   mutex_unlock(&media_bays[i].lock);
  }

  msleep_interruptible(MB_POLL_DELAY);
 }
 return 0;
}
