
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_job {unsigned int in_fence_count; unsigned int bo_count; struct dma_fence** implicit_fences; struct dma_fence** in_fences; } ;
struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;


 struct panfrost_job* to_panfrost_job (struct drm_sched_job*) ;

__attribute__((used)) static struct dma_fence *panfrost_job_dependency(struct drm_sched_job *sched_job,
       struct drm_sched_entity *s_entity)
{
 struct panfrost_job *job = to_panfrost_job(sched_job);
 struct dma_fence *fence;
 unsigned int i;


 for (i = 0; i < job->in_fence_count; i++) {
  if (job->in_fences[i]) {
   fence = job->in_fences[i];
   job->in_fences[i] = ((void*)0);
   return fence;
  }
 }


 for (i = 0; i < job->bo_count; i++) {
  if (job->implicit_fences[i]) {
   fence = job->implicit_fences[i];
   job->implicit_fences[i] = ((void*)0);
   return fence;
  }
 }

 return ((void*)0);
}
