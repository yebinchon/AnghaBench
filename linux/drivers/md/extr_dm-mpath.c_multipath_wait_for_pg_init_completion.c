
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int pg_init_wait; int pg_init_in_progress; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int prepare_to_wait (int *,int *,int ) ;
 int wait ;

__attribute__((used)) static void multipath_wait_for_pg_init_completion(struct multipath *m)
{
 DEFINE_WAIT(wait);

 while (1) {
  prepare_to_wait(&m->pg_init_wait, &wait, TASK_UNINTERRUPTIBLE);

  if (!atomic_read(&m->pg_init_in_progress))
   break;

  io_schedule();
 }
 finish_wait(&m->pg_init_wait, &wait);
}
