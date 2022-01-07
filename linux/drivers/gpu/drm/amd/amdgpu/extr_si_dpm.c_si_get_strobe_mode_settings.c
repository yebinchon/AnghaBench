
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mclk_strobe_mode_threshold; } ;
struct TYPE_2__ {scalar_t__ vram_type; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 scalar_t__ AMDGPU_VRAM_TYPE_GDDR5 ;
 int SISLANDS_SMC_STROBE_ENABLE ;
 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;
 int si_get_ddr3_mclk_frequency_ratio (scalar_t__) ;
 int si_get_mclk_frequency_ratio (scalar_t__,int) ;

__attribute__((used)) static u8 si_get_strobe_mode_settings(struct amdgpu_device *adev, u32 mclk)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);
 bool strobe_mode = 0;
 u8 result = 0;

 if (mclk <= pi->mclk_strobe_mode_threshold)
  strobe_mode = 1;

 if (adev->gmc.vram_type == AMDGPU_VRAM_TYPE_GDDR5)
  result = si_get_mclk_frequency_ratio(mclk, strobe_mode);
 else
  result = si_get_ddr3_mclk_frequency_ratio(mclk);

 if (strobe_mode)
  result |= SISLANDS_SMC_STROBE_ENABLE;

 return result;
}
