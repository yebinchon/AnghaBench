
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_dynamicpm_enable (struct radeon_device*,int) ;
 int r600_enable_mclk_control (struct radeon_device*,int) ;
 int r600_enable_sclk_control (struct radeon_device*,int) ;
 int r600_enable_spll_bypass (struct radeon_device*,int) ;
 int r600_wait_for_spll_change (struct radeon_device*) ;
 int radeon_wait_for_vblank (struct radeon_device*,int) ;

__attribute__((used)) static void rs780_start_dpm(struct radeon_device *rdev)
{
 r600_enable_sclk_control(rdev, 0);
 r600_enable_mclk_control(rdev, 0);

 r600_dynamicpm_enable(rdev, 1);

 radeon_wait_for_vblank(rdev, 0);
 radeon_wait_for_vblank(rdev, 1);

 r600_enable_spll_bypass(rdev, 1);
 r600_wait_for_spll_change(rdev);
 r600_enable_spll_bypass(rdev, 0);
 r600_wait_for_spll_change(rdev);

 r600_enable_spll_bypass(rdev, 1);
 r600_wait_for_spll_change(rdev);
 r600_enable_spll_bypass(rdev, 0);
 r600_wait_for_spll_change(rdev);

 r600_enable_sclk_control(rdev, 1);
}
