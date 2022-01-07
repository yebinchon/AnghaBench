
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_5 ;
 int SCLK_FSTATE_BOOTUP (int ) ;
 int SCLK_FSTATE_BOOTUP_MASK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_program_power_level_enter_state(struct radeon_device *rdev)
{
 WREG32_P(CG_SCLK_DPM_CTRL_5, SCLK_FSTATE_BOOTUP(0), ~SCLK_FSTATE_BOOTUP_MASK);
}
