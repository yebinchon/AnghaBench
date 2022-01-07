
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int doorbell_index; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;
struct TYPE_4__ {int num_compute_rings; struct amdgpu_ring* compute_ring; TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int DRM_ERROR (char*,...) ;
 int PACKET3 (int ,int) ;
 int PACKET3_UNMAP_QUEUES ;
 int PACKET3_UNMAP_QUEUES_ACTION (int) ;
 int PACKET3_UNMAP_QUEUES_DOORBELL_OFFSET0 (int ) ;
 int PACKET3_UNMAP_QUEUES_ENGINE_SEL (int ) ;
 int PACKET3_UNMAP_QUEUES_NUM_QUEUES (int) ;
 int PACKET3_UNMAP_QUEUES_QUEUE_SEL (int ) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static int gfx_v8_0_kcq_disable(struct amdgpu_device *adev)
{
 int r, i;
 struct amdgpu_ring *kiq_ring = &adev->gfx.kiq.ring;

 r = amdgpu_ring_alloc(kiq_ring, 6 * adev->gfx.num_compute_rings);
 if (r)
  DRM_ERROR("Failed to lock KIQ (%d).\n", r);

 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];

  amdgpu_ring_write(kiq_ring, PACKET3(PACKET3_UNMAP_QUEUES, 4));
  amdgpu_ring_write(kiq_ring,
      PACKET3_UNMAP_QUEUES_ACTION(1) |
      PACKET3_UNMAP_QUEUES_QUEUE_SEL(0) |
      PACKET3_UNMAP_QUEUES_ENGINE_SEL(0) |
      PACKET3_UNMAP_QUEUES_NUM_QUEUES(1));
  amdgpu_ring_write(kiq_ring, PACKET3_UNMAP_QUEUES_DOORBELL_OFFSET0(ring->doorbell_index));
  amdgpu_ring_write(kiq_ring, 0);
  amdgpu_ring_write(kiq_ring, 0);
  amdgpu_ring_write(kiq_ring, 0);
 }
 r = amdgpu_ring_test_helper(kiq_ring);
 if (r)
  DRM_ERROR("KCQ disable failed\n");

 return r;
}
