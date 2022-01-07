
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int task; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int lima_sched_pipe_task_done (struct lima_sched_pipe*) ;

__attribute__((used)) static void lima_pp_task_mmu_error(struct lima_sched_pipe *pipe)
{
 if (atomic_dec_and_test(&pipe->task))
  lima_sched_pipe_task_done(pipe);
}
