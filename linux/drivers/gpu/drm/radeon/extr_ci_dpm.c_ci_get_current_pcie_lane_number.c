
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int LC_LINK_WIDTH_RD_MASK ;
 int LC_LINK_WIDTH_RD_SHIFT ;
 int PCIE_LC_LINK_WIDTH_CNTL ;







 int RREG32_PCIE_PORT (int ) ;

__attribute__((used)) static int ci_get_current_pcie_lane_number(struct radeon_device *rdev)
{
 u32 link_width = 0;

 link_width = RREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL) & LC_LINK_WIDTH_RD_MASK;
 link_width >>= LC_LINK_WIDTH_RD_SHIFT;

 switch (link_width) {
 case 133:
  return 1;
 case 130:
  return 2;
 case 129:
  return 4;
 case 128:
  return 8;
 case 132:

  return 12;
 case 134:
 case 131:
 default:
  return 16;
 }
}
