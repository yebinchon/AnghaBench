
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int MP1_C2PMSG_90__CONTENT_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_90 ;
 int phm_wait_for_register_unequal (struct pp_hwmgr*,int ,int ,int ) ;

__attribute__((used)) static uint32_t vega20_wait_for_response(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t reg;

 reg = SOC15_REG_OFFSET(MP1, 0, mmMP1_SMN_C2PMSG_90);

 phm_wait_for_register_unequal(hwmgr, reg,
   0, MP1_C2PMSG_90__CONTENT_MASK);

 return RREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90);
}
