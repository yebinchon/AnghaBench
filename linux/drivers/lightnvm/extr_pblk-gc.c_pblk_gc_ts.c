
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 int io_schedule () ;
 int kthread_should_stop () ;
 int pblk_gc_run (struct pblk*) ;
 int set_current_state (int ) ;

__attribute__((used)) static int pblk_gc_ts(void *data)
{
 struct pblk *pblk = data;

 while (!kthread_should_stop()) {
  pblk_gc_run(pblk);
  set_current_state(TASK_INTERRUPTIBLE);
  io_schedule();
 }

 return 0;
}
