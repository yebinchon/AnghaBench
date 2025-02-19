
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sumo_power_info {scalar_t__ driver_nbps_policy_disable; } ;
struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int GNB_SLOW_FSTATE_0_MASK ;
 int GNB_SLOW_FSTATE_0_SHIFT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static void sumo_set_allos_gnb_slow(struct radeon_device *rdev, u32 index, u32 gnb_slow)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 u32 temp = gnb_slow;
 u32 cg_sclk_dpm_ctrl_3;

 if (pi->driver_nbps_policy_disable)
  temp = 1;

 cg_sclk_dpm_ctrl_3 = RREG32(CG_SCLK_DPM_CTRL_3);
 cg_sclk_dpm_ctrl_3 &= ~(GNB_SLOW_FSTATE_0_MASK << index);
 cg_sclk_dpm_ctrl_3 |= (temp << (GNB_SLOW_FSTATE_0_SHIFT + index));

 WREG32(CG_SCLK_DPM_CTRL_3, cg_sclk_dpm_ctrl_3);
}
