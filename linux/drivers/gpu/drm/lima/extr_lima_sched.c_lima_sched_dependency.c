
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_task {int last_dep; int deps; } ;
struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;


 struct lima_sched_task* to_lima_task (struct drm_sched_job*) ;
 int xa_empty (int *) ;
 struct dma_fence* xa_erase (int *,int ) ;

__attribute__((used)) static struct dma_fence *lima_sched_dependency(struct drm_sched_job *job,
            struct drm_sched_entity *entity)
{
 struct lima_sched_task *task = to_lima_task(job);

 if (!xa_empty(&task->deps))
  return xa_erase(&task->deps, task->last_dep++);

 return ((void*)0);
}
