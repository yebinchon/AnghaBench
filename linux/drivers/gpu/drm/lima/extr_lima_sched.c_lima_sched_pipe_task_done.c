
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_task {int fence; } ;
struct lima_sched_pipe {int (* task_fini ) (struct lima_sched_pipe*) ;struct lima_sched_task* current_task; int error_work; scalar_t__ error; } ;


 int dma_fence_signal (int ) ;
 int schedule_work (int *) ;
 int stub1 (struct lima_sched_pipe*) ;

void lima_sched_pipe_task_done(struct lima_sched_pipe *pipe)
{
 if (pipe->error)
  schedule_work(&pipe->error_work);
 else {
  struct lima_sched_task *task = pipe->current_task;

  pipe->task_fini(pipe);
  dma_fence_signal(task->fence);
 }
}
