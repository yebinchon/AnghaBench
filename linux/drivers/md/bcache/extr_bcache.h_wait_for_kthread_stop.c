
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static inline void wait_for_kthread_stop(void)
{
 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();
 }
}
