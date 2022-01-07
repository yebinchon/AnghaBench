
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
struct TYPE_3__ {int (* get_sclk ) (int ,int) ;} ;


 int SMU_GFXCLK ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_get_dpm_freq_range (int *,int ,int*,int*) ;
 int stub1 (int ,int) ;

int amdgpu_dpm_get_sclk(struct amdgpu_device *adev, bool low)
{
 uint32_t clk_freq;
 int ret = 0;
 if (is_support_sw_smu(adev)) {
  ret = smu_get_dpm_freq_range(&adev->smu, SMU_GFXCLK,
          low ? &clk_freq : ((void*)0),
          !low ? &clk_freq : ((void*)0));
  if (ret)
   return 0;
  return clk_freq * 100;

 } else {
  return (adev)->powerplay.pp_funcs->get_sclk((adev)->powerplay.pp_handle, (low));
 }
}
