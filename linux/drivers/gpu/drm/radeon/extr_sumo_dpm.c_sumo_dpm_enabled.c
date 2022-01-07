
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int DPM_SCLK_ENABLE ;
 int RREG32 (int ) ;

__attribute__((used)) static bool sumo_dpm_enabled(struct radeon_device *rdev)
{
 if (RREG32(CG_SCLK_DPM_CTRL_3) & DPM_SCLK_ENABLE)
  return 1;
 else
  return 0;
}
