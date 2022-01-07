
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_thread {int wqueue; int flags; TYPE_1__* tsk; } ;
struct TYPE_2__ {int comm; } ;


 int THREAD_WAKEUP ;
 int pr_debug (char*,int ) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

void md_wakeup_thread(struct md_thread *thread)
{
 if (thread) {
  pr_debug("md: waking up MD thread %s.\n", thread->tsk->comm);
  set_bit(THREAD_WAKEUP, &thread->flags);
  wake_up(&thread->wqueue);
 }
}
