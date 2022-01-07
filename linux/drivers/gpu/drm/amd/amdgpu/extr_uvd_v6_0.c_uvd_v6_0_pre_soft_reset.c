
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int srbm_soft_reset; } ;


 int uvd_v6_0_stop (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v6_0_pre_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!adev->uvd.inst->srbm_soft_reset)
  return 0;

 uvd_v6_0_stop(adev);
 return 0;
}
