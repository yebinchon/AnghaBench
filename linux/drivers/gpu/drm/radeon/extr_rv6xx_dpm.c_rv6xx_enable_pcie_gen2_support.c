
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LC_GEN2_EN ;
 int LC_OTHER_SIDE_EVER_SENT_GEN2 ;
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ;
 int PCIE_LC_SPEED_CNTL ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32_PCIE_PORT (int ,int) ;

__attribute__((used)) static void rv6xx_enable_pcie_gen2_support(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);

 if ((tmp & LC_OTHER_SIDE_EVER_SENT_GEN2) &&
     (tmp & LC_OTHER_SIDE_SUPPORTS_GEN2)) {
  tmp |= LC_GEN2_EN;
  WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, tmp);
 }
}
