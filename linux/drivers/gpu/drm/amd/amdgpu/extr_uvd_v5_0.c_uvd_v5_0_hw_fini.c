
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ready; } ;
struct amdgpu_ring {TYPE_3__ sched; } ;
struct TYPE_5__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_4__ {struct amdgpu_ring ring; } ;


 scalar_t__ RREG32 (int ) ;
 int mmUVD_STATUS ;
 int uvd_v5_0_stop (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v5_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct amdgpu_ring *ring = &adev->uvd.inst->ring;

 if (RREG32(mmUVD_STATUS) != 0)
  uvd_v5_0_stop(adev);

 ring->sched.ready = 0;

 return 0;
}
