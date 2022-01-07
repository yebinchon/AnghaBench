
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mclk_strobe_mode_threshold; scalar_t__ mem_gddr5; } ;
struct radeon_device {int dummy; } ;


 int SMC_STROBE_ENABLE ;
 int cypress_get_mclk_frequency_ratio (struct radeon_device*,scalar_t__,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

u8 cypress_get_strobe_mode_settings(struct radeon_device *rdev, u32 mclk)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u8 result = 0;
 bool strobe_mode = 0;

 if (pi->mem_gddr5) {
  if (mclk <= pi->mclk_strobe_mode_threshold)
   strobe_mode = 1;
  result = cypress_get_mclk_frequency_ratio(rdev, mclk, strobe_mode);

  if (strobe_mode)
   result |= SMC_STROBE_ENABLE;
 }

 return result;
}
