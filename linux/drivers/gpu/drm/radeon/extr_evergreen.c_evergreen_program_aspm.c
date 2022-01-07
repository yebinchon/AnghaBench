
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int flags; int family; } ;



 int CHIP_BARTS ;
 int LC_DYN_LANES_PWR_STATE (int) ;
 int LC_DYN_LANES_PWR_STATE_MASK ;
 int LC_L0S_INACTIVITY (int) ;
 int LC_L0S_INACTIVITY_MASK ;
 int LC_L1_INACTIVITY (int) ;
 int LC_L1_INACTIVITY_MASK ;
 int LC_PMI_TO_L1_DIS ;
 int LS2_EXIT_TIME (int) ;
 int LS2_EXIT_TIME_MASK ;
 int MULTI_PIF ;
 int PB0_PIF_CNTL ;
 int PB0_PIF_PAIRING ;
 int PB0_PIF_PWRDOWN_0 ;
 int PB0_PIF_PWRDOWN_1 ;
 int PB1_PIF_CNTL ;
 int PB1_PIF_PAIRING ;
 int PB1_PIF_PWRDOWN_0 ;
 int PB1_PIF_PWRDOWN_1 ;
 int PCIE_LC_CNTL ;
 int PCIE_LC_LINK_WIDTH_CNTL ;
 int PLL_POWER_STATE_IN_OFF_0 (int) ;
 int PLL_POWER_STATE_IN_OFF_0_MASK ;
 int PLL_POWER_STATE_IN_OFF_1 (int) ;
 int PLL_POWER_STATE_IN_OFF_1_MASK ;
 int PLL_POWER_STATE_IN_TXS2_0 (int) ;
 int PLL_POWER_STATE_IN_TXS2_0_MASK ;
 int PLL_POWER_STATE_IN_TXS2_1 (int) ;
 int PLL_POWER_STATE_IN_TXS2_1_MASK ;
 int PLL_RAMP_UP_TIME_0 (int) ;
 int PLL_RAMP_UP_TIME_0_MASK ;
 int PLL_RAMP_UP_TIME_1 (int) ;
 int PLL_RAMP_UP_TIME_1_MASK ;
 int RADEON_IS_IGP ;
 int RADEON_IS_PCIE ;
 int RREG32_PCIE_PORT (int ) ;
 int RREG32_PIF_PHY0 (int ) ;
 int RREG32_PIF_PHY1 (int ) ;
 int WREG32_PCIE_PORT (int ,int) ;
 int WREG32_PIF_PHY0 (int ,int) ;
 int WREG32_PIF_PHY1 (int ,int) ;
 scalar_t__ radeon_aspm ;

void evergreen_program_aspm(struct radeon_device *rdev)
{
 u32 data, orig;
 u32 pcie_lc_cntl, pcie_lc_cntl_old;
 bool disable_l0s, disable_l1 = 0, disable_plloff_in_l1 = 0;





 bool fusion_platform = 0;

 if (radeon_aspm == 0)
  return;

 if (!(rdev->flags & RADEON_IS_PCIE))
  return;

 switch (rdev->family) {
 case 134:
 case 133:
 case 132:
 case 130:
 case 135:
 case 129:
 case 128:
 case 131:
 case 136:
  disable_l0s = 1;
  break;
 default:
  disable_l0s = 0;
  break;
 }

 if (rdev->flags & RADEON_IS_IGP)
  fusion_platform = 1;

 data = orig = RREG32_PIF_PHY0(PB0_PIF_PAIRING);
 if (fusion_platform)
  data &= ~MULTI_PIF;
 else
  data |= MULTI_PIF;
 if (data != orig)
  WREG32_PIF_PHY0(PB0_PIF_PAIRING, data);

 data = orig = RREG32_PIF_PHY1(PB1_PIF_PAIRING);
 if (fusion_platform)
  data &= ~MULTI_PIF;
 else
  data |= MULTI_PIF;
 if (data != orig)
  WREG32_PIF_PHY1(PB1_PIF_PAIRING, data);

 pcie_lc_cntl = pcie_lc_cntl_old = RREG32_PCIE_PORT(PCIE_LC_CNTL);
 pcie_lc_cntl &= ~(LC_L0S_INACTIVITY_MASK | LC_L1_INACTIVITY_MASK);
 if (!disable_l0s) {
  if (rdev->family >= CHIP_BARTS)
   pcie_lc_cntl |= LC_L0S_INACTIVITY(7);
  else
   pcie_lc_cntl |= LC_L0S_INACTIVITY(3);
 }

 if (!disable_l1) {
  if (rdev->family >= CHIP_BARTS)
   pcie_lc_cntl |= LC_L1_INACTIVITY(7);
  else
   pcie_lc_cntl |= LC_L1_INACTIVITY(8);

  if (!disable_plloff_in_l1) {
   data = orig = RREG32_PIF_PHY0(PB0_PIF_PWRDOWN_0);
   data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
   data |= PLL_POWER_STATE_IN_OFF_0(7) | PLL_POWER_STATE_IN_TXS2_0(7);
   if (data != orig)
    WREG32_PIF_PHY0(PB0_PIF_PWRDOWN_0, data);

   data = orig = RREG32_PIF_PHY0(PB0_PIF_PWRDOWN_1);
   data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
   data |= PLL_POWER_STATE_IN_OFF_1(7) | PLL_POWER_STATE_IN_TXS2_1(7);
   if (data != orig)
    WREG32_PIF_PHY0(PB0_PIF_PWRDOWN_1, data);

   data = orig = RREG32_PIF_PHY1(PB1_PIF_PWRDOWN_0);
   data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
   data |= PLL_POWER_STATE_IN_OFF_0(7) | PLL_POWER_STATE_IN_TXS2_0(7);
   if (data != orig)
    WREG32_PIF_PHY1(PB1_PIF_PWRDOWN_0, data);

   data = orig = RREG32_PIF_PHY1(PB1_PIF_PWRDOWN_1);
   data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
   data |= PLL_POWER_STATE_IN_OFF_1(7) | PLL_POWER_STATE_IN_TXS2_1(7);
   if (data != orig)
    WREG32_PIF_PHY1(PB1_PIF_PWRDOWN_1, data);

   if (rdev->family >= CHIP_BARTS) {
    data = orig = RREG32_PIF_PHY0(PB0_PIF_PWRDOWN_0);
    data &= ~PLL_RAMP_UP_TIME_0_MASK;
    data |= PLL_RAMP_UP_TIME_0(4);
    if (data != orig)
     WREG32_PIF_PHY0(PB0_PIF_PWRDOWN_0, data);

    data = orig = RREG32_PIF_PHY0(PB0_PIF_PWRDOWN_1);
    data &= ~PLL_RAMP_UP_TIME_1_MASK;
    data |= PLL_RAMP_UP_TIME_1(4);
    if (data != orig)
     WREG32_PIF_PHY0(PB0_PIF_PWRDOWN_1, data);

    data = orig = RREG32_PIF_PHY1(PB1_PIF_PWRDOWN_0);
    data &= ~PLL_RAMP_UP_TIME_0_MASK;
    data |= PLL_RAMP_UP_TIME_0(4);
    if (data != orig)
     WREG32_PIF_PHY1(PB1_PIF_PWRDOWN_0, data);

    data = orig = RREG32_PIF_PHY1(PB1_PIF_PWRDOWN_1);
    data &= ~PLL_RAMP_UP_TIME_1_MASK;
    data |= PLL_RAMP_UP_TIME_1(4);
    if (data != orig)
     WREG32_PIF_PHY1(PB1_PIF_PWRDOWN_1, data);
   }

   data = orig = RREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL);
   data &= ~LC_DYN_LANES_PWR_STATE_MASK;
   data |= LC_DYN_LANES_PWR_STATE(3);
   if (data != orig)
    WREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL, data);

   if (rdev->family >= CHIP_BARTS) {
    data = orig = RREG32_PIF_PHY0(PB0_PIF_CNTL);
    data &= ~LS2_EXIT_TIME_MASK;
    data |= LS2_EXIT_TIME(1);
    if (data != orig)
     WREG32_PIF_PHY0(PB0_PIF_CNTL, data);

    data = orig = RREG32_PIF_PHY1(PB1_PIF_CNTL);
    data &= ~LS2_EXIT_TIME_MASK;
    data |= LS2_EXIT_TIME(1);
    if (data != orig)
     WREG32_PIF_PHY1(PB1_PIF_CNTL, data);
   }
  }
 }


 if (rdev->family < CHIP_BARTS)
  pcie_lc_cntl |= LC_PMI_TO_L1_DIS;

 if (pcie_lc_cntl != pcie_lc_cntl_old)
  WREG32_PCIE_PORT(PCIE_LC_CNTL, pcie_lc_cntl);
}
