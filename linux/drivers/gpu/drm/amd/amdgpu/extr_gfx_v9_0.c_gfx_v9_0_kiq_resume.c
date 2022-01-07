
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ready; } ;
struct amdgpu_ring {TYPE_1__ sched; int mqd_obj; int * mqd_ptr; } ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;
struct TYPE_6__ {TYPE_2__ kiq; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;


 int amdgpu_bo_kmap (int ,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_reserve (int ,int) ;
 int amdgpu_bo_unreserve (int ) ;
 int gfx_v9_0_kiq_init_queue (struct amdgpu_ring*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gfx_v9_0_kiq_resume(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 int r;

 ring = &adev->gfx.kiq.ring;

 r = amdgpu_bo_reserve(ring->mqd_obj, 0);
 if (unlikely(r != 0))
  return r;

 r = amdgpu_bo_kmap(ring->mqd_obj, (void **)&ring->mqd_ptr);
 if (unlikely(r != 0))
  return r;

 gfx_v9_0_kiq_init_queue(ring);
 amdgpu_bo_kunmap(ring->mqd_obj);
 ring->mqd_ptr = ((void*)0);
 amdgpu_bo_unreserve(ring->mqd_obj);
 ring->sched.ready = 1;
 return 0;
}
