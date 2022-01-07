
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct TYPE_7__ {TYPE_2__* s_fence; } ;
struct panfrost_job {int bo_count; int bos; int render_done_fence; TYPE_3__ base; int implicit_fences; int refcount; TYPE_1__* file_priv; struct panfrost_device* pfdev; } ;
struct panfrost_device {int sched_lock; } ;
struct drm_sched_entity {int dummy; } ;
struct TYPE_6__ {int finished; } ;
struct TYPE_5__ {struct drm_sched_entity* sched_entity; } ;


 int dma_fence_get (int *) ;
 int drm_gem_lock_reservations (int ,int ,struct ww_acquire_ctx*) ;
 int drm_gem_unlock_reservations (int ,int ,struct ww_acquire_ctx*) ;
 int drm_sched_entity_push_job (TYPE_3__*,struct drm_sched_entity*) ;
 int drm_sched_job_init (TYPE_3__*,struct drm_sched_entity*,int *) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panfrost_acquire_object_fences (int ,int ,int ) ;
 int panfrost_attach_object_fences (int ,int ,int ) ;
 int panfrost_job_get_slot (struct panfrost_job*) ;

int panfrost_job_push(struct panfrost_job *job)
{
 struct panfrost_device *pfdev = job->pfdev;
 int slot = panfrost_job_get_slot(job);
 struct drm_sched_entity *entity = &job->file_priv->sched_entity[slot];
 struct ww_acquire_ctx acquire_ctx;
 int ret = 0;

 mutex_lock(&pfdev->sched_lock);

 ret = drm_gem_lock_reservations(job->bos, job->bo_count,
         &acquire_ctx);
 if (ret) {
  mutex_unlock(&pfdev->sched_lock);
  return ret;
 }

 ret = drm_sched_job_init(&job->base, entity, ((void*)0));
 if (ret) {
  mutex_unlock(&pfdev->sched_lock);
  goto unlock;
 }

 job->render_done_fence = dma_fence_get(&job->base.s_fence->finished);

 kref_get(&job->refcount);

 panfrost_acquire_object_fences(job->bos, job->bo_count,
           job->implicit_fences);

 drm_sched_entity_push_job(&job->base, entity);

 mutex_unlock(&pfdev->sched_lock);

 panfrost_attach_object_fences(job->bos, job->bo_count,
          job->render_done_fence);

unlock:
 drm_gem_unlock_reservations(job->bos, job->bo_count, &acquire_ctx);

 return ret;
}
