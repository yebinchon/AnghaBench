
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct drm_sched_rq {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_13__ {struct drm_sched_rq* sched_rq; } ;
struct amdgpu_ring {TYPE_4__ sched; int adev; } ;
struct TYPE_12__ {unsigned int num_vcn_inst; int harvest_config; unsigned int num_enc_rings; TYPE_2__* inst; } ;
struct TYPE_18__ {TYPE_8__* inst; } ;
struct TYPE_10__ {struct amdgpu_ring* ring; } ;
struct TYPE_16__ {unsigned int num_instances; TYPE_6__* instance; } ;
struct TYPE_14__ {unsigned int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ vcn; TYPE_9__ uvd; TYPE_1__ vce; TYPE_7__ sdma; TYPE_5__ gfx; int vram_lost_counter; int gpu_reset_counter; } ;
struct amdgpu_ctx_entity {int sequence; int entity; struct amdgpu_ctx_entity* fences; } ;
struct amdgpu_ctx {int init_priority; struct amdgpu_ctx_entity* fences; struct amdgpu_ctx_entity** entities; int guilty; int override_priority; void* vram_lost_counter; void* reset_counter; void* reset_counter_query; int lock; int ring_lock; int refcount; struct amdgpu_device* adev; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_17__ {struct amdgpu_ring* ring_enc; struct amdgpu_ring ring; } ;
struct TYPE_15__ {struct amdgpu_ring ring; } ;
struct TYPE_11__ {struct amdgpu_ring ring_jpeg; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; } ;





 unsigned int AMDGPU_HW_IP_NUM ;






 int AMDGPU_MAX_RINGS ;
 int DRM_SCHED_PRIORITY_MAX ;
 int DRM_SCHED_PRIORITY_UNSET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int* amdgpu_ctx_num_entities ;
 int amdgpu_ctx_priority_permit (struct drm_file*,int) ;
 unsigned int amdgpu_ctx_total_num_entities () ;
 unsigned int amdgpu_sched_jobs ;
 void* atomic_read (int *) ;
 int drm_sched_entity_destroy (int *) ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,unsigned int,int *) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct amdgpu_ctx_entity*) ;
 int kref_init (int *) ;
 int memset (struct amdgpu_ctx*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int amdgpu_ctx_init(struct amdgpu_device *adev,
      enum drm_sched_priority priority,
      struct drm_file *filp,
      struct amdgpu_ctx *ctx)
{
 unsigned num_entities = amdgpu_ctx_total_num_entities();
 unsigned i, j, k;
 int r;

 if (priority < 0 || priority >= DRM_SCHED_PRIORITY_MAX)
  return -EINVAL;

 r = amdgpu_ctx_priority_permit(filp, priority);
 if (r)
  return r;

 memset(ctx, 0, sizeof(*ctx));
 ctx->adev = adev;

 ctx->fences = kcalloc(amdgpu_sched_jobs * num_entities,
         sizeof(struct dma_fence*), GFP_KERNEL);
 if (!ctx->fences)
  return -ENOMEM;

 ctx->entities[0] = kcalloc(num_entities,
       sizeof(struct amdgpu_ctx_entity),
       GFP_KERNEL);
 if (!ctx->entities[0]) {
  r = -ENOMEM;
  goto error_free_fences;
 }

 for (i = 0; i < num_entities; ++i) {
  struct amdgpu_ctx_entity *entity = &ctx->entities[0][i];

  entity->sequence = 1;
  entity->fences = &ctx->fences[amdgpu_sched_jobs * i];
 }
 for (i = 1; i < AMDGPU_HW_IP_NUM; ++i)
  ctx->entities[i] = ctx->entities[i - 1] +
   amdgpu_ctx_num_entities[i - 1];

 kref_init(&ctx->refcount);
 spin_lock_init(&ctx->ring_lock);
 mutex_init(&ctx->lock);

 ctx->reset_counter = atomic_read(&adev->gpu_reset_counter);
 ctx->reset_counter_query = ctx->reset_counter;
 ctx->vram_lost_counter = atomic_read(&adev->vram_lost_counter);
 ctx->init_priority = priority;
 ctx->override_priority = DRM_SCHED_PRIORITY_UNSET;

 for (i = 0; i < AMDGPU_HW_IP_NUM; ++i) {
  struct amdgpu_ring *rings[AMDGPU_MAX_RINGS];
  struct drm_sched_rq *rqs[AMDGPU_MAX_RINGS];
  unsigned num_rings = 0;
  unsigned num_rqs = 0;

  switch (i) {
  case 134:
   rings[0] = &adev->gfx.gfx_ring[0];
   num_rings = 1;
   break;
  case 136:
   for (j = 0; j < adev->gfx.num_compute_rings; ++j)
    rings[j] = &adev->gfx.compute_ring[j];
   num_rings = adev->gfx.num_compute_rings;
   break;
  case 135:
   for (j = 0; j < adev->sdma.num_instances; ++j)
    rings[j] = &adev->sdma.instance[j].ring;
   num_rings = adev->sdma.num_instances;
   break;
  case 133:
   rings[0] = &adev->uvd.inst[0].ring;
   num_rings = 1;
   break;
  case 131:
   rings[0] = &adev->vce.ring[0];
   num_rings = 1;
   break;
  case 132:
   rings[0] = &adev->uvd.inst[0].ring_enc[0];
   num_rings = 1;
   break;
  case 130:
   for (j = 0; j < adev->vcn.num_vcn_inst; ++j) {
    if (adev->vcn.harvest_config & (1 << j))
     continue;
    rings[num_rings++] = &adev->vcn.inst[j].ring_dec;
   }
   break;
  case 129:
   for (j = 0; j < adev->vcn.num_vcn_inst; ++j) {
    if (adev->vcn.harvest_config & (1 << j))
     continue;
    for (k = 0; k < adev->vcn.num_enc_rings; ++k)
     rings[num_rings++] = &adev->vcn.inst[j].ring_enc[k];
   }
   break;
  case 128:
   for (j = 0; j < adev->vcn.num_vcn_inst; ++j) {
    if (adev->vcn.harvest_config & (1 << j))
     continue;
    rings[num_rings++] = &adev->vcn.inst[j].ring_jpeg;
   }
   break;
  }

  for (j = 0; j < num_rings; ++j) {
   if (!rings[j]->adev)
    continue;

   rqs[num_rqs++] = &rings[j]->sched.sched_rq[priority];
  }

  for (j = 0; j < amdgpu_ctx_num_entities[i]; ++j)
   r = drm_sched_entity_init(&ctx->entities[i][j].entity,
        rqs, num_rqs, &ctx->guilty);
  if (r)
   goto error_cleanup_entities;
 }

 return 0;

error_cleanup_entities:
 for (i = 0; i < num_entities; ++i)
  drm_sched_entity_destroy(&ctx->entities[0][i].entity);
 kfree(ctx->entities[0]);

error_free_fences:
 kfree(ctx->fences);
 ctx->fences = ((void*)0);
 return r;
}
