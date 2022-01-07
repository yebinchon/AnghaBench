
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_pcie_gen { ____Placeholder_amdgpu_pcie_gen } amdgpu_pcie_gen ;





 int CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2 ;
 int CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3 ;

enum amdgpu_pcie_gen amdgpu_get_pcie_gen_support(struct amdgpu_device *adev,
       u32 sys_mask,
       enum amdgpu_pcie_gen asic_gen,
       enum amdgpu_pcie_gen default_gen)
{
 switch (asic_gen) {
 case 130:
  return 130;
 case 129:
  return 129;
 case 128:
  return 128;
 default:
  if ((sys_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3) &&
      (default_gen == 128))
   return 128;
  else if ((sys_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2) &&
    (default_gen == 129))
   return 129;
  else
   return 130;
 }
 return 130;
}
