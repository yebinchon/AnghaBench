
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
struct drm_sched_job {int cb; struct drm_sched_fence* s_fence; } ;
struct drm_sched_fence {int finished; int parent; } ;
struct drm_sched_entity {int dummy; } ;
struct drm_gpu_scheduler {int job_scheduled; TYPE_1__* ops; int hw_rq_count; int wake_up_worker; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {struct dma_fence* (* run_job ) (struct drm_sched_job*) ;} ;


 int DRM_ERROR (char*,int) ;
 int ENOENT ;
 int IS_ERR_OR_NULL (struct dma_fence*) ;
 int PTR_ERR (struct dma_fence*) ;
 int SCHED_FIFO ;
 int atomic_inc (int *) ;
 int current ;
 int dma_fence_add_callback (struct dma_fence*,int *,int (*) (struct dma_fence*,int *)) ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_set_error (int *,int ) ;
 int drm_sched_blocked (struct drm_gpu_scheduler*) ;
 int drm_sched_cleanup_jobs (struct drm_gpu_scheduler*) ;
 struct drm_sched_job* drm_sched_entity_pop_job (struct drm_sched_entity*) ;
 int drm_sched_fence_scheduled (struct drm_sched_fence*) ;
 int drm_sched_job_begin (struct drm_sched_job*) ;
 int drm_sched_process_job (struct dma_fence*,int *) ;
 struct drm_sched_entity* drm_sched_select_entity (struct drm_gpu_scheduler*) ;
 scalar_t__ kthread_should_stop () ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 struct dma_fence* stub1 (struct drm_sched_job*) ;
 int wait_event_interruptible (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int drm_sched_main(void *param)
{
 struct sched_param sparam = {.sched_priority = 1};
 struct drm_gpu_scheduler *sched = (struct drm_gpu_scheduler *)param;
 int r;

 sched_setscheduler(current, SCHED_FIFO, &sparam);

 while (!kthread_should_stop()) {
  struct drm_sched_entity *entity = ((void*)0);
  struct drm_sched_fence *s_fence;
  struct drm_sched_job *sched_job;
  struct dma_fence *fence;

  wait_event_interruptible(sched->wake_up_worker,
      (drm_sched_cleanup_jobs(sched),
      (!drm_sched_blocked(sched) &&
       (entity = drm_sched_select_entity(sched))) ||
      kthread_should_stop()));

  if (!entity)
   continue;

  sched_job = drm_sched_entity_pop_job(entity);
  if (!sched_job)
   continue;

  s_fence = sched_job->s_fence;

  atomic_inc(&sched->hw_rq_count);
  drm_sched_job_begin(sched_job);

  fence = sched->ops->run_job(sched_job);
  drm_sched_fence_scheduled(s_fence);

  if (!IS_ERR_OR_NULL(fence)) {
   s_fence->parent = dma_fence_get(fence);
   r = dma_fence_add_callback(fence, &sched_job->cb,
         drm_sched_process_job);
   if (r == -ENOENT)
    drm_sched_process_job(fence, &sched_job->cb);
   else if (r)
    DRM_ERROR("fence add callback failed (%d)\n",
       r);
   dma_fence_put(fence);
  } else {

   dma_fence_set_error(&s_fence->finished, PTR_ERR(fence));
   drm_sched_process_job(((void*)0), &sched_job->cb);
  }

  wake_up(&sched->job_scheduled);
 }
 return 0;
}
