
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {int dev; TYPE_1__ gmc; } ;


 int dev_warn (int ,char*) ;
 int gmc_v8_0_mc_stop (struct amdgpu_device*) ;
 scalar_t__ gmc_v8_0_wait_for_idle (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v8_0_pre_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!adev->gmc.srbm_soft_reset)
  return 0;

 gmc_v8_0_mc_stop(adev);
 if (gmc_v8_0_wait_for_idle(adev)) {
  dev_warn(adev->dev, "Wait for GMC idle timed out !\n");
 }

 return 0;
}
