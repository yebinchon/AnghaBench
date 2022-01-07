
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int flags; } ;


 scalar_t__ ASIC_IS_X2 (struct radeon_device*) ;
 int DRM_ERROR (char*,int) ;
 int R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE ;
 int RADEON_IS_IGP ;
 int RADEON_IS_PCIE ;
 int RADEON_PCIE_LC_LINK_WIDTH_CNTL ;
 int RADEON_PCIE_LC_LINK_WIDTH_MASK ;
 int RADEON_PCIE_LC_LINK_WIDTH_SHIFT ;
 int RADEON_PCIE_LC_LINK_WIDTH_X0 ;
 int RADEON_PCIE_LC_LINK_WIDTH_X1 ;
 int RADEON_PCIE_LC_LINK_WIDTH_X12 ;
 int RADEON_PCIE_LC_LINK_WIDTH_X16 ;
 int RADEON_PCIE_LC_LINK_WIDTH_X2 ;
 int RADEON_PCIE_LC_LINK_WIDTH_X4 ;
 int RADEON_PCIE_LC_LINK_WIDTH_X8 ;
 int RADEON_PCIE_LC_RECONFIG_NOW ;
 int RREG32_PCIE_PORT (int ) ;
 int WREG32_PCIE_PORT (int ,int) ;
 int radeon_gui_idle (struct radeon_device*) ;

void r600_set_pcie_lanes(struct radeon_device *rdev, int lanes)
{
 u32 link_width_cntl, mask;

 if (rdev->flags & RADEON_IS_IGP)
  return;

 if (!(rdev->flags & RADEON_IS_PCIE))
  return;


 if (ASIC_IS_X2(rdev))
  return;

 radeon_gui_idle(rdev);

 switch (lanes) {
 case 0:
  mask = RADEON_PCIE_LC_LINK_WIDTH_X0;
  break;
 case 1:
  mask = RADEON_PCIE_LC_LINK_WIDTH_X1;
  break;
 case 2:
  mask = RADEON_PCIE_LC_LINK_WIDTH_X2;
  break;
 case 4:
  mask = RADEON_PCIE_LC_LINK_WIDTH_X4;
  break;
 case 8:
  mask = RADEON_PCIE_LC_LINK_WIDTH_X8;
  break;
 case 12:

  mask = RADEON_PCIE_LC_LINK_WIDTH_X12;
  break;
 case 16:
  mask = RADEON_PCIE_LC_LINK_WIDTH_X16;
  break;
 default:
  DRM_ERROR("invalid pcie lane request: %d\n", lanes);
  return;
 }

 link_width_cntl = RREG32_PCIE_PORT(RADEON_PCIE_LC_LINK_WIDTH_CNTL);
 link_width_cntl &= ~RADEON_PCIE_LC_LINK_WIDTH_MASK;
 link_width_cntl |= mask << RADEON_PCIE_LC_LINK_WIDTH_SHIFT;
 link_width_cntl |= (RADEON_PCIE_LC_RECONFIG_NOW |
       R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE);

 WREG32_PCIE_PORT(RADEON_PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
}
