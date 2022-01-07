
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct evergreen_power_info {scalar_t__ sclk_deep_sleep; } ;
struct amdgpu_device {scalar_t__ asic_type; int rev_id; } ;


 int AUTOSCALE_ON_SS_CLEAR ;
 int CG_SPLL_AUTOSCALE_CNTL ;
 scalar_t__ CHIP_TAHITI ;
 int DEEP_SLEEP_CLK_SEL (int) ;
 int DEEP_SLEEP_CLK_SEL_MASK ;
 int MISC_CLK_CNTL ;
 int WREG32_P (int ,int ,int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void si_program_ds_registers(struct amdgpu_device *adev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(adev);
 u32 tmp;


 if (adev->asic_type == CHIP_TAHITI && adev->rev_id == 0x0)
  tmp = 0x10;
 else
  tmp = 0x1;

 if (eg_pi->sclk_deep_sleep) {
  WREG32_P(MISC_CLK_CNTL, DEEP_SLEEP_CLK_SEL(tmp), ~DEEP_SLEEP_CLK_SEL_MASK);
  WREG32_P(CG_SPLL_AUTOSCALE_CNTL, AUTOSCALE_ON_SS_CLEAR,
    ~AUTOSCALE_ON_SS_CLEAR);
 }
}
