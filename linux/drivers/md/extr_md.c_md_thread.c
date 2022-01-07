
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_thread {int (* run ) (struct md_thread*) ;int flags; int timeout; int wqueue; } ;


 int SIGKILL ;
 int THREAD_WAKEUP ;
 int allow_signal (int ) ;
 int clear_bit (int ,int *) ;
 int current ;
 int flush_signals (int ) ;
 int kthread_parkme () ;
 scalar_t__ kthread_should_park () ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct md_thread*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int md_thread(void *arg)
{
 struct md_thread *thread = arg;
 allow_signal(SIGKILL);
 while (!kthread_should_stop()) {






  if (signal_pending(current))
   flush_signals(current);

  wait_event_interruptible_timeout
   (thread->wqueue,
    test_bit(THREAD_WAKEUP, &thread->flags)
    || kthread_should_stop() || kthread_should_park(),
    thread->timeout);

  clear_bit(THREAD_WAKEUP, &thread->flags);
  if (kthread_should_park())
   kthread_parkme();
  if (!kthread_should_stop())
   thread->run(thread);
 }

 return 0;
}
