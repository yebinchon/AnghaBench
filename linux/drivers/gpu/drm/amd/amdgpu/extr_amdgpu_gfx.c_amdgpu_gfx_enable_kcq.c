
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct amdgpu_ring {int queue; int pipe; int me; } ;
struct amdgpu_kiq {TYPE_2__* pmf; struct amdgpu_ring ring; } ;
struct TYPE_4__ {int queue_bitmap; } ;
struct TYPE_6__ {int num_compute_rings; int * compute_ring; TYPE_1__ mec; struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
typedef int queue_mask ;
struct TYPE_5__ {int map_queues_size; int (* kiq_map_queues ) (struct amdgpu_ring*,int *) ;int (* kiq_set_resources ) (struct amdgpu_ring*,unsigned long long) ;scalar_t__ set_resources_size; } ;


 int AMDGPU_MAX_COMPUTE_QUEUES ;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int ,int ,int ) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,scalar_t__) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int stub1 (struct amdgpu_ring*,unsigned long long) ;
 int stub2 (struct amdgpu_ring*,int *) ;
 int test_bit (int,int ) ;

int amdgpu_gfx_enable_kcq(struct amdgpu_device *adev)
{
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;
 struct amdgpu_ring *kiq_ring = &adev->gfx.kiq.ring;
 uint64_t queue_mask = 0;
 int r, i;

 if (!kiq->pmf || !kiq->pmf->kiq_map_queues || !kiq->pmf->kiq_set_resources)
  return -EINVAL;

 for (i = 0; i < AMDGPU_MAX_COMPUTE_QUEUES; ++i) {
  if (!test_bit(i, adev->gfx.mec.queue_bitmap))
   continue;




  if (WARN_ON(i > (sizeof(queue_mask)*8))) {
   DRM_ERROR("Invalid KCQ enabled: %d\n", i);
   break;
  }

  queue_mask |= (1ull << i);
 }

 DRM_INFO("kiq ring mec %d pipe %d q %d\n", kiq_ring->me, kiq_ring->pipe,
       kiq_ring->queue);

 r = amdgpu_ring_alloc(kiq_ring, kiq->pmf->map_queues_size *
     adev->gfx.num_compute_rings +
     kiq->pmf->set_resources_size);
 if (r) {
  DRM_ERROR("Failed to lock KIQ (%d).\n", r);
  return r;
 }

 kiq->pmf->kiq_set_resources(kiq_ring, queue_mask);
 for (i = 0; i < adev->gfx.num_compute_rings; i++)
  kiq->pmf->kiq_map_queues(kiq_ring, &adev->gfx.compute_ring[i]);

 r = amdgpu_ring_test_helper(kiq_ring);
 if (r)
  DRM_ERROR("KCQ enable failed\n");

 return r;
}
