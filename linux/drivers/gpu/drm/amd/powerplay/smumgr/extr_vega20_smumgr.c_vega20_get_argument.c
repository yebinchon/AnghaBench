
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_82 ;

__attribute__((used)) static uint32_t vega20_get_argument(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 return RREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_82);
}
