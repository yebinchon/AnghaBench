
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LC_L1_INACTIVITY (int) ;
 int LC_L1_INACTIVITY_MASK ;
 int PCIE_LC_CNTL ;
 int PCIE_P_CNTL ;
 int P_ALLOW_PRX_FRONTEND_SHUTOFF ;
 int P_PLL_BUF_PDNB ;
 int P_PLL_PDNB ;
 int P_PLL_PWRDN_IN_L1L23 ;
 int RREG32_PCIE (int ) ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32_PCIE (int ,int) ;
 int WREG32_PCIE_PORT (int ,int) ;

__attribute__((used)) static void rv770_enable_pll_sleep_in_l1(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32_PCIE_PORT(PCIE_LC_CNTL) & ~LC_L1_INACTIVITY_MASK;
 tmp |= LC_L1_INACTIVITY(8);
 WREG32_PCIE_PORT(PCIE_LC_CNTL, tmp);


 tmp = RREG32_PCIE(PCIE_P_CNTL);
 tmp |= P_PLL_PWRDN_IN_L1L23;
 tmp &= ~P_PLL_BUF_PDNB;
 tmp &= ~P_PLL_PDNB;
 tmp |= P_ALLOW_PRX_FRONTEND_SHUTOFF;
 WREG32_PCIE(PCIE_P_CNTL, tmp);
}
