
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sumo_power_info {int boot_pl; } ;
struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_4 ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_power_level_enable (struct radeon_device*,int,int) ;
 int sumo_program_power_level (struct radeon_device*,int *,int ) ;

__attribute__((used)) static void sumo_program_bootup_state(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 u32 dpm_ctrl4 = RREG32(CG_SCLK_DPM_CTRL_4);
 u32 i;

 sumo_program_power_level(rdev, &pi->boot_pl, 0);

 dpm_ctrl4 &= 0xFFFFFF00;
 WREG32(CG_SCLK_DPM_CTRL_4, dpm_ctrl4);

 for (i = 1; i < 8; i++)
  sumo_power_level_enable(rdev, i, 0);
}
