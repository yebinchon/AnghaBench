
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sclk_dpm_boost_margin; int sclk_dpm_throttle_margin; int gnb_tdp_limit; int sclk_dpm_tdp_limit_pg; } ;
struct sumo_power_info {TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;


 int GNB_TDP_LIMIT ;
 int LCLK_SCALING_TIMER_PRESCALER_MASK ;
 int LCLK_SCALING_TIMER_PRESCALER_SHIFT ;
 int RCU_BOOST_MARGIN ;
 int RCU_GNB_PWR_REP_TIMER_CNTL ;
 int RCU_LCLK_SCALING_CNTL ;
 int RCU_SclkDpmTdpLimitPG ;
 int RCU_THROTTLE_MARGIN ;
 int RREG32_RCU (int ) ;
 int SUMO_SMU_SERVICE_ROUTINE_GFX_SRV_ID_20 ;
 int WREG32_RCU (int ,int) ;
 int radeon_get_xclk (struct radeon_device*) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_power_of_4 (int) ;
 int sumo_send_msg_to_smu (struct radeon_device*,int ) ;

void sumo_enable_boost_timer(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 u32 period, unit, timer_value;
 u32 xclk = radeon_get_xclk(rdev);

 unit = (RREG32_RCU(RCU_LCLK_SCALING_CNTL) & LCLK_SCALING_TIMER_PRESCALER_MASK)
  >> LCLK_SCALING_TIMER_PRESCALER_SHIFT;

 period = 100 * (xclk / 100 / sumo_power_of_4(unit));

 timer_value = (period << 16) | (unit << 4);

 WREG32_RCU(RCU_GNB_PWR_REP_TIMER_CNTL, timer_value);
 WREG32_RCU(RCU_BOOST_MARGIN, pi->sys_info.sclk_dpm_boost_margin);
 WREG32_RCU(RCU_THROTTLE_MARGIN, pi->sys_info.sclk_dpm_throttle_margin);
 WREG32_RCU(GNB_TDP_LIMIT, pi->sys_info.gnb_tdp_limit);
 WREG32_RCU(RCU_SclkDpmTdpLimitPG, pi->sys_info.sclk_dpm_tdp_limit_pg);

 sumo_send_msg_to_smu(rdev, SUMO_SMU_SERVICE_ROUTINE_GFX_SRV_ID_20);
}
