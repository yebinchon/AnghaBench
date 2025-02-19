
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int flags; TYPE_2__* pdev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ max_bus_speed; } ;


 scalar_t__ ASIC_IS_X2 (struct radeon_device*) ;
 int DRM_INFO (char*) ;
 int LC_CLR_FAILED_SPD_CHANGE_CNT ;
 int LC_CURRENT_DATA_RATE ;
 int LC_GEN2_EN_STRAP ;
 int LC_OTHER_SIDE_EVER_SENT_GEN2 ;
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ;
 int LC_TARGET_LINK_SPEED_OVERRIDE_EN ;
 int LC_UPCONFIGURE_DIS ;
 int PCIE_LC_LINK_WIDTH_CNTL ;
 int PCIE_LC_SPEED_CNTL ;
 scalar_t__ PCIE_SPEED_5_0GT ;
 scalar_t__ PCIE_SPEED_8_0GT ;
 int RADEON_IS_IGP ;
 int RADEON_IS_PCIE ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32_PCIE_PORT (int ,int) ;
 scalar_t__ radeon_pcie_gen2 ;

void evergreen_pcie_gen2_enable(struct radeon_device *rdev)
{
 u32 link_width_cntl, speed_cntl;

 if (radeon_pcie_gen2 == 0)
  return;

 if (rdev->flags & RADEON_IS_IGP)
  return;

 if (!(rdev->flags & RADEON_IS_PCIE))
  return;


 if (ASIC_IS_X2(rdev))
  return;

 if ((rdev->pdev->bus->max_bus_speed != PCIE_SPEED_5_0GT) &&
  (rdev->pdev->bus->max_bus_speed != PCIE_SPEED_8_0GT))
  return;

 speed_cntl = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
 if (speed_cntl & LC_CURRENT_DATA_RATE) {
  DRM_INFO("PCIE gen 2 link speeds already enabled\n");
  return;
 }

 DRM_INFO("enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\n");

 if ((speed_cntl & LC_OTHER_SIDE_EVER_SENT_GEN2) ||
     (speed_cntl & LC_OTHER_SIDE_SUPPORTS_GEN2)) {

  link_width_cntl = RREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL);
  link_width_cntl &= ~LC_UPCONFIGURE_DIS;
  WREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);

  speed_cntl = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
  speed_cntl &= ~LC_TARGET_LINK_SPEED_OVERRIDE_EN;
  WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, speed_cntl);

  speed_cntl = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
  speed_cntl |= LC_CLR_FAILED_SPD_CHANGE_CNT;
  WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, speed_cntl);

  speed_cntl = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
  speed_cntl &= ~LC_CLR_FAILED_SPD_CHANGE_CNT;
  WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, speed_cntl);

  speed_cntl = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL);
  speed_cntl |= LC_GEN2_EN_STRAP;
  WREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL, speed_cntl);

 } else {
  link_width_cntl = RREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL);

  if (1)
   link_width_cntl |= LC_UPCONFIGURE_DIS;
  else
   link_width_cntl &= ~LC_UPCONFIGURE_DIS;
  WREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
 }
}
