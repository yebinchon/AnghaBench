
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int ATI_REV_ID_FUSE_MACRO__ADDRESS ;
 int ATI_REV_ID_FUSE_MACRO__MASK ;
 int ATI_REV_ID_FUSE_MACRO__SHIFT ;
 int PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID_MASK ;
 int PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID__SHIFT ;
 int RREG32 (int ) ;
 int RREG32_SMC (int ) ;
 int mmPCIE_EFUSE4 ;

__attribute__((used)) static uint32_t vi_get_rev_id(struct amdgpu_device *adev)
{
 if (adev->flags & AMD_IS_APU)
  return (RREG32_SMC(ATI_REV_ID_FUSE_MACRO__ADDRESS) & ATI_REV_ID_FUSE_MACRO__MASK)
   >> ATI_REV_ID_FUSE_MACRO__SHIFT;
 else
  return (RREG32(mmPCIE_EFUSE4) & PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID_MASK)
   >> PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID__SHIFT;
}
