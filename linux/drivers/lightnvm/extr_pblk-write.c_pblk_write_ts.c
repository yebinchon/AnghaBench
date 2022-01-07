
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 int io_schedule () ;
 int kthread_should_stop () ;
 int pblk_submit_write (struct pblk*,int*) ;
 int set_current_state (int ) ;

int pblk_write_ts(void *data)
{
 struct pblk *pblk = data;
 int secs_left;
 int write_failure = 0;

 while (!kthread_should_stop()) {
  if (!write_failure) {
   write_failure = pblk_submit_write(pblk, &secs_left);

   if (secs_left)
    continue;
  }
  set_current_state(TASK_INTERRUPTIBLE);
  io_schedule();
 }

 return 0;
}
