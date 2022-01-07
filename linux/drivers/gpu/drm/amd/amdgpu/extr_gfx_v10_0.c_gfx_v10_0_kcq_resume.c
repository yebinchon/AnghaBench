
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int mqd_obj; int * mqd_ptr; } ;
struct TYPE_2__ {int num_compute_rings; struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int amdgpu_bo_kmap (int ,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_reserve (int ,int) ;
 int amdgpu_bo_unreserve (int ) ;
 int amdgpu_gfx_enable_kcq (struct amdgpu_device*) ;
 int gfx_v10_0_cp_compute_enable (struct amdgpu_device*,int) ;
 int gfx_v10_0_kcq_init_queue (struct amdgpu_ring*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gfx_v10_0_kcq_resume(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring = ((void*)0);
 int r = 0, i;

 gfx_v10_0_cp_compute_enable(adev, 1);

 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  ring = &adev->gfx.compute_ring[i];

  r = amdgpu_bo_reserve(ring->mqd_obj, 0);
  if (unlikely(r != 0))
   goto done;
  r = amdgpu_bo_kmap(ring->mqd_obj, (void **)&ring->mqd_ptr);
  if (!r) {
   r = gfx_v10_0_kcq_init_queue(ring);
   amdgpu_bo_kunmap(ring->mqd_obj);
   ring->mqd_ptr = ((void*)0);
  }
  amdgpu_bo_unreserve(ring->mqd_obj);
  if (r)
   goto done;
 }

 r = amdgpu_gfx_enable_kcq(adev);
done:
 return r;
}
