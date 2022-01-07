
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_rings; TYPE_2__* ring; } ;
struct amdgpu_device {TYPE_3__ vce; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_5__ {TYPE_1__ sched; } ;


 int DRM_DEBUG (char*) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int vce_v4_0_stop (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v4_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i;

 if (!amdgpu_sriov_vf(adev)) {

  vce_v4_0_stop(adev);
 } else {

  DRM_DEBUG("For SRIOV client, shouldn't do anything.\n");
 }

 for (i = 0; i < adev->vce.num_rings; i++)
  adev->vce.ring[i].sched.ready = 0;

 return 0;
}
