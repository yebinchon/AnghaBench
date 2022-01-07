
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 scalar_t__ REG_GET_FIELD (scalar_t__,int ,int ) ;
 int SOFT_RESET_SDMA ;
 int SOFT_RESET_SDMA1 ;
 int SRBM_SOFT_RESET ;
 int sdma_v3_0_gfx_resume (struct amdgpu_device*) ;
 int sdma_v3_0_rlc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v3_0_post_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;

 if (!adev->sdma.srbm_soft_reset)
  return 0;

 srbm_soft_reset = adev->sdma.srbm_soft_reset;

 if (REG_GET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_SDMA) ||
     REG_GET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_SDMA1)) {
  sdma_v3_0_gfx_resume(adev);
  sdma_v3_0_rlc_resume(adev);
 }

 return 0;
}
