
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int vega10_didt_set_mask (struct pp_hwmgr*,int) ;

__attribute__((used)) static int vega10_disable_se_edc_config(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 amdgpu_gfx_rlc_enter_safe_mode(adev);

 vega10_didt_set_mask(hwmgr, 0);

 amdgpu_gfx_rlc_exit_safe_mode(adev);

 return 0;
}
