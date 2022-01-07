
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct amdgpu_ring {int me; int pipe; int queue; } ;
struct amdgpu_iv_entry {int ring_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int DRM_DEBUG (char*) ;
 int amdgpu_fence_process (struct amdgpu_ring*) ;

__attribute__((used)) static int gfx_v8_0_eop_irq(struct amdgpu_device *adev,
       struct amdgpu_irq_src *source,
       struct amdgpu_iv_entry *entry)
{
 int i;
 u8 me_id, pipe_id, queue_id;
 struct amdgpu_ring *ring;

 DRM_DEBUG("IH: CP EOP\n");
 me_id = (entry->ring_id & 0x0c) >> 2;
 pipe_id = (entry->ring_id & 0x03) >> 0;
 queue_id = (entry->ring_id & 0x70) >> 4;

 switch (me_id) {
 case 0:
  amdgpu_fence_process(&adev->gfx.gfx_ring[0]);
  break;
 case 1:
 case 2:
  for (i = 0; i < adev->gfx.num_compute_rings; i++) {
   ring = &adev->gfx.compute_ring[i];



   if ((ring->me == me_id) && (ring->pipe == pipe_id) && (ring->queue == queue_id))
    amdgpu_fence_process(ring);
  }
  break;
 }
 return 0;
}
