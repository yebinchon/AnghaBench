
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; int sq_irq; int cp_ecc_error_irq; int priv_inst_irq; int priv_reg_irq; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int (* stop ) (struct amdgpu_device*) ;} ;


 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfx_v8_0_cp_enable (struct amdgpu_device*,int) ;
 int gfx_v8_0_csb_vram_unpin (struct amdgpu_device*) ;
 int gfx_v8_0_kcq_disable (struct amdgpu_device*) ;
 int gfx_v8_0_wait_for_idle (struct amdgpu_device*) ;
 int gfx_v8_0_wait_for_rlc_idle (struct amdgpu_device*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v8_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_irq_put(adev, &adev->gfx.priv_reg_irq, 0);
 amdgpu_irq_put(adev, &adev->gfx.priv_inst_irq, 0);

 amdgpu_irq_put(adev, &adev->gfx.cp_ecc_error_irq, 0);

 amdgpu_irq_put(adev, &adev->gfx.sq_irq, 0);


 gfx_v8_0_kcq_disable(adev);

 if (amdgpu_sriov_vf(adev)) {
  pr_debug("For SRIOV client, shouldn't do anything.\n");
  return 0;
 }
 amdgpu_gfx_rlc_enter_safe_mode(adev);
 if (!gfx_v8_0_wait_for_idle(adev))
  gfx_v8_0_cp_enable(adev, 0);
 else
  pr_err("cp is busy, skip halt cp\n");
 if (!gfx_v8_0_wait_for_rlc_idle(adev))
  adev->gfx.rlc.funcs->stop(adev);
 else
  pr_err("rlc is busy, skip halt rlc\n");
 amdgpu_gfx_rlc_exit_safe_mode(adev);

 gfx_v8_0_csb_vram_unpin(adev);

 return 0;
}
