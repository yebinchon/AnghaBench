
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int CNB_THERMTHRO_MASK_SCLK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_override_cnb_thermal_events(struct radeon_device *rdev)
{
 WREG32_P(CG_SCLK_DPM_CTRL_3, CNB_THERMTHRO_MASK_SCLK,
   ~CNB_THERMTHRO_MASK_SCLK);
}
