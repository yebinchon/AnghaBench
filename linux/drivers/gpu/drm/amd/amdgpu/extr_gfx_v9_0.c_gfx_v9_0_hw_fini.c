
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_10__ {int queue; int pipe; int me; } ;
struct TYPE_6__ {TYPE_5__ ring; } ;
struct TYPE_9__ {TYPE_3__ rlc; TYPE_1__ kiq; int priv_inst_irq; int priv_reg_irq; int cp_ecc_error_irq; } ;
struct amdgpu_device {TYPE_4__ gfx; int srbm_mutex; int in_suspend; int in_gpu_reset; } ;
struct TYPE_7__ {int (* stop ) (struct amdgpu_device*) ;} ;


 int CP_PQ_WPTR_POLL_CNTL ;
 int EN ;
 int GC ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int ) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfx_v9_0_cp_enable (struct amdgpu_device*,int) ;
 int gfx_v9_0_cp_gfx_enable (struct amdgpu_device*,int) ;
 int gfx_v9_0_csb_vram_unpin (struct amdgpu_device*) ;
 int gfx_v9_0_kcq_disable (struct amdgpu_device*) ;
 int gfx_v9_0_kiq_fini_register (TYPE_5__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int soc15_grbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v9_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_irq_put(adev, &adev->gfx.cp_ecc_error_irq, 0);
 amdgpu_irq_put(adev, &adev->gfx.priv_reg_irq, 0);
 amdgpu_irq_put(adev, &adev->gfx.priv_inst_irq, 0);


 gfx_v9_0_kcq_disable(adev);

 if (amdgpu_sriov_vf(adev)) {
  gfx_v9_0_cp_gfx_enable(adev, 0);





  WREG32_FIELD15(GC, 0, CP_PQ_WPTR_POLL_CNTL, EN, 0);
  return 0;
 }




 if (!adev->in_gpu_reset && !adev->in_suspend) {
  mutex_lock(&adev->srbm_mutex);
  soc15_grbm_select(adev, adev->gfx.kiq.ring.me,
    adev->gfx.kiq.ring.pipe,
    adev->gfx.kiq.ring.queue, 0);
  gfx_v9_0_kiq_fini_register(&adev->gfx.kiq.ring);
  soc15_grbm_select(adev, 0, 0, 0, 0);
  mutex_unlock(&adev->srbm_mutex);
 }

 gfx_v9_0_cp_enable(adev, 0);
 adev->gfx.rlc.funcs->stop(adev);

 gfx_v9_0_csb_vram_unpin(adev);

 return 0;
}
