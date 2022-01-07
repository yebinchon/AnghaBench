
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_8__ {TYPE_3__ rlc; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {int asic_type; TYPE_4__ gfx; TYPE_1__ firmware; } ;
struct TYPE_6__ {int (* start ) (struct amdgpu_device*) ;int (* stop ) (struct amdgpu_device*) ;} ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;


 int GC ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int amdgpu_lbpw ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfx_v9_0_enable_lbpw (struct amdgpu_device*,int) ;
 int gfx_v9_0_init_csb (struct amdgpu_device*) ;
 int gfx_v9_0_init_pg (struct amdgpu_device*) ;
 int gfx_v9_0_rlc_load_microcode (struct amdgpu_device*) ;
 int mmRLC_CGCG_CGLS_CTRL ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v9_0_rlc_resume(struct amdgpu_device *adev)
{
 int r;

 if (amdgpu_sriov_vf(adev)) {
  gfx_v9_0_init_csb(adev);
  return 0;
 }

 adev->gfx.rlc.funcs->stop(adev);


 WREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL, 0);

 gfx_v9_0_init_pg(adev);

 if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {

  r = gfx_v9_0_rlc_load_microcode(adev);
  if (r)
   return r;
 }

 switch (adev->asic_type) {
 case 129:
  if (amdgpu_lbpw == 0)
   gfx_v9_0_enable_lbpw(adev, 0);
  else
   gfx_v9_0_enable_lbpw(adev, 1);
  break;
 case 128:
  if (amdgpu_lbpw > 0)
   gfx_v9_0_enable_lbpw(adev, 1);
  else
   gfx_v9_0_enable_lbpw(adev, 0);
  break;
 default:
  break;
 }

 adev->gfx.rlc.funcs->start(adev);

 return 0;
}
