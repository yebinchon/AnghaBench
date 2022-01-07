
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_rings; int * ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int DRM_INFO (char*) ;
 int amdgpu_ring_test_helper (int *) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int vce_v4_0_sriov_start (struct amdgpu_device*) ;
 int vce_v4_0_start (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v4_0_hw_init(void *handle)
{
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  r = vce_v4_0_sriov_start(adev);
 else
  r = vce_v4_0_start(adev);
 if (r)
  return r;

 for (i = 0; i < adev->vce.num_rings; i++) {
  r = amdgpu_ring_test_helper(&adev->vce.ring[i]);
  if (r)
   return r;
 }

 DRM_INFO("VCE initialized successfully.\n");

 return 0;
}
