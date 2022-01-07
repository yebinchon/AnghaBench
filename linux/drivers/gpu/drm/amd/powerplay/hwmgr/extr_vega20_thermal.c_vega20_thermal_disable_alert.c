
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int THM ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmTHM_THERMAL_INT_ENA ;

int vega20_thermal_disable_alert(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 WREG32_SOC15(THM, 0, mmTHM_THERMAL_INT_ENA, 0);

 return 0;
}
