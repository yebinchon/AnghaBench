
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int dummy; } ;


 int lima_sched_pipe_task_done (struct lima_sched_pipe*) ;

__attribute__((used)) static void lima_gp_task_mmu_error(struct lima_sched_pipe *pipe)
{
 lima_sched_pipe_task_done(pipe);
}
