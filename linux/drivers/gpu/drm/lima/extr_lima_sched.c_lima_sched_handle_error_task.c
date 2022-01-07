
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_task {int base; } ;
struct lima_sched_pipe {int num_mmu; int base; int * current_task; int * current_vm; scalar_t__* mmu; scalar_t__ bcast_mmu; int (* task_error ) (struct lima_sched_pipe*) ;} ;


 int drm_sched_increase_karma (int *) ;
 int drm_sched_resubmit_jobs (int *) ;
 int drm_sched_start (int *,int) ;
 int drm_sched_stop (int *,int *) ;
 int lima_mmu_page_fault_resume (scalar_t__) ;
 int lima_vm_put (int *) ;
 int stub1 (struct lima_sched_pipe*) ;

__attribute__((used)) static void lima_sched_handle_error_task(struct lima_sched_pipe *pipe,
      struct lima_sched_task *task)
{
 drm_sched_stop(&pipe->base, &task->base);

 if (task)
  drm_sched_increase_karma(&task->base);

 pipe->task_error(pipe);

 if (pipe->bcast_mmu)
  lima_mmu_page_fault_resume(pipe->bcast_mmu);
 else {
  int i;

  for (i = 0; i < pipe->num_mmu; i++)
   lima_mmu_page_fault_resume(pipe->mmu[i]);
 }

 if (pipe->current_vm)
  lima_vm_put(pipe->current_vm);

 pipe->current_vm = ((void*)0);
 pipe->current_task = ((void*)0);

 drm_sched_resubmit_jobs(&pipe->base);
 drm_sched_start(&pipe->base, 1);
}
