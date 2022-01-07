
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int wait; } ;


 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int current ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int md_in_flight (struct mapped_device*) ;
 int prepare_to_wait (int *,int *,long) ;
 scalar_t__ signal_pending_state (long,int ) ;
 int wait ;

__attribute__((used)) static int dm_wait_for_completion(struct mapped_device *md, long task_state)
{
 int r = 0;
 DEFINE_WAIT(wait);

 while (1) {
  prepare_to_wait(&md->wait, &wait, task_state);

  if (!md_in_flight(md))
   break;

  if (signal_pending_state(task_state, current)) {
   r = -EINTR;
   break;
  }

  io_schedule();
 }
 finish_wait(&md->wait, &wait);

 return r;
}
