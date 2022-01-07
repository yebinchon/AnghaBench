
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LC_ASPM_TO_L1_DIS ;
 int LC_L1_INACTIVITY (int) ;
 int LC_L1_INACTIVITY_MASK ;
 int LC_PMI_TO_L1_DIS ;
 int PCIE_LC_CNTL ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32_PCIE_PORT (int ,int ) ;

__attribute__((used)) static void rv6xx_enable_l1(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32_PCIE_PORT(PCIE_LC_CNTL);
 tmp &= ~LC_L1_INACTIVITY_MASK;
 tmp |= LC_L1_INACTIVITY(4);
 tmp &= ~LC_PMI_TO_L1_DIS;
 tmp &= ~LC_ASPM_TO_L1_DIS;
 WREG32_PCIE_PORT(PCIE_LC_CNTL, tmp);
}
