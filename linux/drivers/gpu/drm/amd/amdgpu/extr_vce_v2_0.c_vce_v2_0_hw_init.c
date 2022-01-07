
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_rings; int * ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int DRM_INFO (char*) ;
 int amdgpu_asic_set_vce_clocks (struct amdgpu_device*,int,int) ;
 int amdgpu_ring_test_helper (int *) ;
 int vce_v2_0_enable_mgcg (struct amdgpu_device*,int,int) ;

__attribute__((used)) static int vce_v2_0_hw_init(void *handle)
{
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_asic_set_vce_clocks(adev, 10000, 10000);
 vce_v2_0_enable_mgcg(adev, 1, 0);

 for (i = 0; i < adev->vce.num_rings; i++) {
  r = amdgpu_ring_test_helper(&adev->vce.ring[i]);
  if (r)
   return r;
 }

 DRM_INFO("VCE initialized successfully.\n");

 return 0;
}
