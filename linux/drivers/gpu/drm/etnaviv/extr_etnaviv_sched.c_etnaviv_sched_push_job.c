
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* s_fence; } ;
struct etnaviv_gem_submit {scalar_t__ out_fence_id; TYPE_2__* gpu; TYPE_3__ sched_job; int refcount; int out_fence; int ctx; } ;
struct drm_sched_entity {int dummy; } ;
struct TYPE_7__ {int fence_lock; int fence_idr; } ;
struct TYPE_6__ {int finished; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MAX ;
 int dma_fence_get (int *) ;
 int drm_sched_entity_push_job (TYPE_3__*,struct drm_sched_entity*) ;
 int drm_sched_job_cleanup (TYPE_3__*) ;
 int drm_sched_job_init (TYPE_3__*,struct drm_sched_entity*,int ) ;
 scalar_t__ idr_alloc_cyclic (int *,int ,int ,int ,int ) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int etnaviv_sched_push_job(struct drm_sched_entity *sched_entity,
      struct etnaviv_gem_submit *submit)
{
 int ret = 0;






 mutex_lock(&submit->gpu->fence_lock);

 ret = drm_sched_job_init(&submit->sched_job, sched_entity,
     submit->ctx);
 if (ret)
  goto out_unlock;

 submit->out_fence = dma_fence_get(&submit->sched_job.s_fence->finished);
 submit->out_fence_id = idr_alloc_cyclic(&submit->gpu->fence_idr,
      submit->out_fence, 0,
      INT_MAX, GFP_KERNEL);
 if (submit->out_fence_id < 0) {
  drm_sched_job_cleanup(&submit->sched_job);
  ret = -ENOMEM;
  goto out_unlock;
 }


 kref_get(&submit->refcount);

 drm_sched_entity_push_job(&submit->sched_job, sched_entity);

out_unlock:
 mutex_unlock(&submit->gpu->fence_lock);

 return ret;
}
