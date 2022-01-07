
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int * ring_enc; } ;


 int amdgpu_ring_fini (int *) ;
 int amdgpu_uvd_suspend (struct amdgpu_device*) ;
 int amdgpu_uvd_sw_fini (struct amdgpu_device*) ;
 scalar_t__ uvd_v6_0_enc_support (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v6_0_sw_fini(void *handle)
{
 int i, r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = amdgpu_uvd_suspend(adev);
 if (r)
  return r;

 if (uvd_v6_0_enc_support(adev)) {
  for (i = 0; i < adev->uvd.num_enc_rings; ++i)
   amdgpu_ring_fini(&adev->uvd.inst->ring_enc[i]);
 }

 return amdgpu_uvd_sw_fini(adev);
}
