
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int gmc_v8_0_mc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v8_0_post_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!adev->gmc.srbm_soft_reset)
  return 0;

 gmc_v8_0_mc_resume(adev);
 return 0;
}
