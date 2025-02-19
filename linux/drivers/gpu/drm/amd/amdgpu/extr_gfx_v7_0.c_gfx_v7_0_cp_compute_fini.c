
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int mqd_obj; } ;
struct TYPE_2__ {int num_compute_rings; struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;

__attribute__((used)) static void gfx_v7_0_cp_compute_fini(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];

  amdgpu_bo_free_kernel(&ring->mqd_obj, ((void*)0), ((void*)0));
 }
}
