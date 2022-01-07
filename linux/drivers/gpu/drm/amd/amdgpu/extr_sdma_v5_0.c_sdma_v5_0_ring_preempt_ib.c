
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct amdgpu_ring {scalar_t__ trail_seq; int idx; int * trail_fence_cpu_addr; int trail_fence_gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;


 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int WREG32 (int ,int) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_set_preempt_cond_exec (struct amdgpu_ring*,int) ;
 int amdgpu_sdma_get_index_from_ring (struct amdgpu_ring*,scalar_t__*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mmSDMA0_GFX_PREEMPT ;
 int mmSDMA1_GFX_PREEMPT ;
 int sdma_v5_0_ring_emit_fence (struct amdgpu_ring*,int ,scalar_t__,int ) ;
 int udelay (int) ;

__attribute__((used)) static int sdma_v5_0_ring_preempt_ib(struct amdgpu_ring *ring)
{
 int i, r = 0;
 struct amdgpu_device *adev = ring->adev;
 u32 index = 0;
 u64 sdma_gfx_preempt;

 amdgpu_sdma_get_index_from_ring(ring, &index);
 if (index == 0)
  sdma_gfx_preempt = mmSDMA0_GFX_PREEMPT;
 else
  sdma_gfx_preempt = mmSDMA1_GFX_PREEMPT;


 amdgpu_ring_set_preempt_cond_exec(ring, 0);


 ring->trail_seq += 1;
 amdgpu_ring_alloc(ring, 10);
 sdma_v5_0_ring_emit_fence(ring, ring->trail_fence_gpu_addr,
      ring->trail_seq, 0);
 amdgpu_ring_commit(ring);


 WREG32(sdma_gfx_preempt, 1);


 for (i = 0; i < adev->usec_timeout; i++) {
  if (ring->trail_seq ==
      le32_to_cpu(*(ring->trail_fence_cpu_addr)))
   break;
  udelay(1);
 }

 if (i >= adev->usec_timeout) {
  r = -EINVAL;
  DRM_ERROR("ring %d failed to be preempted\n", ring->idx);
 }


 WREG32(sdma_gfx_preempt, 0);


 amdgpu_ring_set_preempt_cond_exec(ring, 1);
 return r;
}
