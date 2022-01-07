
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {scalar_t__ trail_seq; int idx; int * trail_fence_cpu_addr; int trail_fence_gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_kiq {TYPE_2__* pmf; struct amdgpu_ring ring; } ;
struct TYPE_3__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {int usec_timeout; TYPE_1__ gfx; } ;
struct TYPE_4__ {int (* kiq_unmap_queues ) (struct amdgpu_ring*,struct amdgpu_ring*,int ,int ,scalar_t__) ;int unmap_queues_size; } ;


 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int PREEMPT_QUEUES_NO_UNMAP ;
 scalar_t__ amdgpu_ring_alloc (struct amdgpu_ring*,int ) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_set_preempt_cond_exec (struct amdgpu_ring*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int stub1 (struct amdgpu_ring*,struct amdgpu_ring*,int ,int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v10_0_ring_preempt_ib(struct amdgpu_ring *ring)
{
 int i, r = 0;
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;
 struct amdgpu_ring *kiq_ring = &kiq->ring;

 if (!kiq->pmf || !kiq->pmf->kiq_unmap_queues)
  return -EINVAL;

 if (amdgpu_ring_alloc(kiq_ring, kiq->pmf->unmap_queues_size))
  return -ENOMEM;


 amdgpu_ring_set_preempt_cond_exec(ring, 0);


 kiq->pmf->kiq_unmap_queues(kiq_ring, ring, PREEMPT_QUEUES_NO_UNMAP,
       ring->trail_fence_gpu_addr,
       ++ring->trail_seq);
 amdgpu_ring_commit(kiq_ring);


 for (i = 0; i < adev->usec_timeout; i++) {
  if (ring->trail_seq ==
      le32_to_cpu(*(ring->trail_fence_cpu_addr)))
   break;
  udelay(1);
 }

 if (i >= adev->usec_timeout) {
  r = -EINVAL;
  DRM_ERROR("ring %d failed to preempt ib\n", ring->idx);
 }


 amdgpu_ring_set_preempt_cond_exec(ring, 1);
 return r;
}
