
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_job {int finish_cb; struct drm_sched_fence* s_fence; } ;
struct drm_sched_fence {int finished; } ;
struct drm_sched_entity {int last_scheduled; int job_queue; } ;


 int DRM_ERROR (char*,int) ;
 int ENOENT ;
 int ESRCH ;
 int dma_fence_add_callback (int ,int *,int (*) (int *,int *)) ;
 int dma_fence_set_error (int *,int ) ;
 int drm_sched_entity_kill_jobs_cb (int *,int *) ;
 int drm_sched_fence_scheduled (struct drm_sched_fence*) ;
 int spsc_queue_pop (int *) ;
 struct drm_sched_job* to_drm_sched_job (int ) ;

__attribute__((used)) static void drm_sched_entity_kill_jobs(struct drm_sched_entity *entity)
{
 struct drm_sched_job *job;
 int r;

 while ((job = to_drm_sched_job(spsc_queue_pop(&entity->job_queue)))) {
  struct drm_sched_fence *s_fence = job->s_fence;

  drm_sched_fence_scheduled(s_fence);
  dma_fence_set_error(&s_fence->finished, -ESRCH);






  if (!entity->last_scheduled) {
   drm_sched_entity_kill_jobs_cb(((void*)0), &job->finish_cb);
   continue;
  }

  r = dma_fence_add_callback(entity->last_scheduled,
        &job->finish_cb,
        drm_sched_entity_kill_jobs_cb);
  if (r == -ENOENT)
   drm_sched_entity_kill_jobs_cb(((void*)0), &job->finish_cb);
  else if (r)
   DRM_ERROR("fence add callback failed (%d)\n", r);
 }
}
