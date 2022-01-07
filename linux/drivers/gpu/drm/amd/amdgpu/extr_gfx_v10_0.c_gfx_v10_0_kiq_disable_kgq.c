
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int dummy; } ;
struct amdgpu_kiq {TYPE_1__* pmf; struct amdgpu_ring ring; } ;
struct TYPE_4__ {int num_gfx_rings; int * gfx_ring; struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
struct TYPE_3__ {int unmap_queues_size; int (* kiq_unmap_queues ) (struct amdgpu_ring*,int *,int ,int ,int ) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int PREEMPT_QUEUES ;
 scalar_t__ amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_test_ring (struct amdgpu_ring*) ;
 int stub1 (struct amdgpu_ring*,int *,int ,int ,int ) ;

__attribute__((used)) static int gfx_v10_0_kiq_disable_kgq(struct amdgpu_device *adev)
{
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;
 struct amdgpu_ring *kiq_ring = &kiq->ring;
 int i;

 if (!kiq->pmf || !kiq->pmf->kiq_unmap_queues)
  return -EINVAL;

 if (amdgpu_ring_alloc(kiq_ring, kiq->pmf->unmap_queues_size *
     adev->gfx.num_gfx_rings))
  return -ENOMEM;

 for (i = 0; i < adev->gfx.num_gfx_rings; i++)
  kiq->pmf->kiq_unmap_queues(kiq_ring, &adev->gfx.gfx_ring[i],
        PREEMPT_QUEUES, 0, 0);

 return amdgpu_ring_test_ring(kiq_ring);
}
