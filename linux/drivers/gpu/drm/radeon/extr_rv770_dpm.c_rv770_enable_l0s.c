
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LC_L0S_INACTIVITY (int) ;
 int LC_L0S_INACTIVITY_MASK ;
 int PCIE_LC_CNTL ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32_PCIE_PORT (int ,int) ;

__attribute__((used)) static void rv770_enable_l0s(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32_PCIE_PORT(PCIE_LC_CNTL) & ~LC_L0S_INACTIVITY_MASK;
 tmp |= LC_L0S_INACTIVITY(3);
 WREG32_PCIE_PORT(PCIE_LC_CNTL, tmp);
}
