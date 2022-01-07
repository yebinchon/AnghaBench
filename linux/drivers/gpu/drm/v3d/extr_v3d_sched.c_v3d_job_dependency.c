
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_job {int last_dep; int deps; } ;
struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;


 struct v3d_job* to_v3d_job (struct drm_sched_job*) ;
 int xa_empty (int *) ;
 struct dma_fence* xa_erase (int *,int ) ;

__attribute__((used)) static struct dma_fence *
v3d_job_dependency(struct drm_sched_job *sched_job,
     struct drm_sched_entity *s_entity)
{
 struct v3d_job *job = to_v3d_job(sched_job);





 if (!xa_empty(&job->deps))
  return xa_erase(&job->deps, job->last_dep++);

 return ((void*)0);
}
