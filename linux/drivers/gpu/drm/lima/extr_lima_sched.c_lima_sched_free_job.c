
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_vm {int dummy; } ;
struct lima_sched_task {int num_bos; int fence; struct lima_bo** bos; struct lima_vm* vm; } ;
struct lima_sched_pipe {int task_slab; } ;
struct lima_bo {int dummy; } ;
struct drm_sched_job {int sched; } ;


 int dma_fence_put (int ) ;
 int kmem_cache_free (int ,struct lima_sched_task*) ;
 int lima_sched_task_fini (struct lima_sched_task*) ;
 int lima_vm_bo_del (struct lima_vm*,struct lima_bo*) ;
 struct lima_sched_pipe* to_lima_pipe (int ) ;
 struct lima_sched_task* to_lima_task (struct drm_sched_job*) ;

__attribute__((used)) static void lima_sched_free_job(struct drm_sched_job *job)
{
 struct lima_sched_task *task = to_lima_task(job);
 struct lima_sched_pipe *pipe = to_lima_pipe(job->sched);
 struct lima_vm *vm = task->vm;
 struct lima_bo **bos = task->bos;
 int i;

 dma_fence_put(task->fence);

 for (i = 0; i < task->num_bos; i++)
  lima_vm_bo_del(vm, bos[i]);

 lima_sched_task_fini(task);
 kmem_cache_free(pipe->task_slab, task);
}
