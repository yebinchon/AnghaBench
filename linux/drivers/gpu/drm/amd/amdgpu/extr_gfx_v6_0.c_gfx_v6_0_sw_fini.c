
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_gfx_rings; int num_compute_rings; int * compute_ring; int * gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int amdgpu_gfx_rlc_fini (struct amdgpu_device*) ;
 int amdgpu_ring_fini (int *) ;

__attribute__((used)) static int gfx_v6_0_sw_fini(void *handle)
{
 int i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->gfx.num_gfx_rings; i++)
  amdgpu_ring_fini(&adev->gfx.gfx_ring[i]);
 for (i = 0; i < adev->gfx.num_compute_rings; i++)
  amdgpu_ring_fini(&adev->gfx.compute_ring[i]);

 amdgpu_gfx_rlc_fini(adev);

 return 0;
}
