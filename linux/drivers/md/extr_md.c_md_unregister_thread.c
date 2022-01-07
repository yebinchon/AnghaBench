
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_thread {int tsk; } ;


 int kfree (struct md_thread*) ;
 int kthread_stop (int ) ;
 int pers_lock ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_pid_nr (int ) ;

void md_unregister_thread(struct md_thread **threadp)
{
 struct md_thread *thread = *threadp;
 if (!thread)
  return;
 pr_debug("interrupting MD-thread pid %d\n", task_pid_nr(thread->tsk));



 spin_lock(&pers_lock);
 *threadp = ((void*)0);
 spin_unlock(&pers_lock);

 kthread_stop(thread->tsk);
 kfree(thread);
}
