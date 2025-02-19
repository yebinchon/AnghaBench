
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_sched_entity {TYPE_2__* rq; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_7__ {int s_priority; TYPE_1__* s_fence; } ;
struct amdgpu_job {TYPE_3__ base; void* owner; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_6__ {int sched; } ;
struct TYPE_5__ {int finished; } ;


 int EINVAL ;
 int amdgpu_job_free_resources (struct amdgpu_job*) ;
 int amdgpu_ring_priority_get (struct amdgpu_ring*,int) ;
 struct dma_fence* dma_fence_get (int *) ;
 int drm_sched_entity_push_job (TYPE_3__*,struct drm_sched_entity*) ;
 int drm_sched_job_init (TYPE_3__*,struct drm_sched_entity*,void*) ;
 struct amdgpu_ring* to_amdgpu_ring (int ) ;

int amdgpu_job_submit(struct amdgpu_job *job, struct drm_sched_entity *entity,
        void *owner, struct dma_fence **f)
{
 enum drm_sched_priority priority;
 struct amdgpu_ring *ring;
 int r;

 if (!f)
  return -EINVAL;

 r = drm_sched_job_init(&job->base, entity, owner);
 if (r)
  return r;

 job->owner = owner;
 *f = dma_fence_get(&job->base.s_fence->finished);
 amdgpu_job_free_resources(job);
 priority = job->base.s_priority;
 drm_sched_entity_push_job(&job->base, entity);

 ring = to_amdgpu_ring(entity->rq->sched);
 amdgpu_ring_priority_get(ring, priority);

 return 0;
}
