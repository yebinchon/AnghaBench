
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int ENABLE_GEN2PCIE ;
 int GENERAL_PWRMGT ;
 int WREG32_P (int ,int ,int ) ;
 int ni_enable_bif_dynamic_pcie_gen2 (struct radeon_device*,int) ;

__attribute__((used)) static void ni_enable_dynamic_pcie_gen2(struct radeon_device *rdev,
     bool enable)
{
 ni_enable_bif_dynamic_pcie_gen2(rdev, enable);

 if (enable)
  WREG32_P(GENERAL_PWRMGT, ENABLE_GEN2PCIE, ~ENABLE_GEN2PCIE);
 else
  WREG32_P(GENERAL_PWRMGT, 0, ~ENABLE_GEN2PCIE);
}
