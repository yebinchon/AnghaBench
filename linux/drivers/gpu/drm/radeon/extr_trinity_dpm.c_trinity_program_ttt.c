
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int htc_hyst_lmt; } ;
struct trinity_power_info {int thermal_auto_throttling; TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;


 int HT (int) ;
 int HT_MASK ;
 int LT (int) ;
 int LT_MASK ;
 int RREG32_SMC (int ) ;
 int SMU_SCLK_DPM_TTT ;
 int WREG32_SMC (int ,int) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

__attribute__((used)) static void trinity_program_ttt(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 u32 value = RREG32_SMC(SMU_SCLK_DPM_TTT);

 value &= ~(HT_MASK | LT_MASK);
 value |= HT((pi->thermal_auto_throttling + 49) * 8);
 value |= LT((pi->thermal_auto_throttling + 49 - pi->sys_info.htc_hyst_lmt) * 8);
 WREG32_SMC(SMU_SCLK_DPM_TTT, value);
}
