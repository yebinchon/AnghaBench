
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int ci_get_average_mclk_freq (struct radeon_device*) ;

u32 ci_dpm_get_current_mclk(struct radeon_device *rdev)
{
 u32 mclk = ci_get_average_mclk_freq(rdev);

 return mclk;
}
