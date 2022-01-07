
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int error; int (* task_mmu_error ) (struct lima_sched_pipe*) ;} ;


 int stub1 (struct lima_sched_pipe*) ;

__attribute__((used)) static inline void lima_sched_pipe_mmu_error(struct lima_sched_pipe *pipe)
{
 pipe->error = 1;
 pipe->task_mmu_error(pipe);
}
