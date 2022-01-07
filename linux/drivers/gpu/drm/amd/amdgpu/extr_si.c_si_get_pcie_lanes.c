
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int LC_LINK_WIDTH_RD_MASK ;
 int LC_LINK_WIDTH_RD_SHIFT ;






 int PCIE_LC_LINK_WIDTH_CNTL ;
 int RREG32_PCIE_PORT (int ) ;

__attribute__((used)) static int si_get_pcie_lanes(struct amdgpu_device *adev)
{
 u32 link_width_cntl;

 if (adev->flags & AMD_IS_APU)
  return 0;

 link_width_cntl = RREG32_PCIE_PORT(PCIE_LC_LINK_WIDTH_CNTL);

 switch ((link_width_cntl & LC_LINK_WIDTH_RD_MASK) >> LC_LINK_WIDTH_RD_SHIFT) {
 case 132:
  return 1;
 case 130:
  return 2;
 case 129:
  return 4;
 case 128:
  return 8;
 case 133:
 case 131:
 default:
  return 16;
 }
}
