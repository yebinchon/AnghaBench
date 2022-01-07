
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct amdgpu_ring {int queue; int pipe; int me; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int num_compute_rings; TYPE_2__ rlc; struct amdgpu_ring* compute_ring; scalar_t__ grbm_soft_reset; int srbm_soft_reset; } ;
struct amdgpu_device {TYPE_3__ gfx; int srbm_mutex; } ;
struct TYPE_4__ {int (* start ) (struct amdgpu_device*) ;} ;


 int GRBM_SOFT_RESET ;
 scalar_t__ REG_GET_FIELD (scalar_t__,int ,int ) ;
 int SOFT_RESET_CP ;
 int SOFT_RESET_CPC ;
 int SOFT_RESET_CPF ;
 int SOFT_RESET_CPG ;
 int SOFT_RESET_GFX ;
 int gfx_v8_0_cp_gfx_resume (struct amdgpu_device*) ;
 int gfx_v8_0_cp_test_all_rings (struct amdgpu_device*) ;
 int gfx_v8_0_deactivate_hqd (struct amdgpu_device*,int) ;
 int gfx_v8_0_kcq_resume (struct amdgpu_device*) ;
 int gfx_v8_0_kiq_resume (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct amdgpu_device*) ;
 int vi_srbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int gfx_v8_0_post_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 grbm_soft_reset = 0;

 if ((!adev->gfx.grbm_soft_reset) &&
     (!adev->gfx.srbm_soft_reset))
  return 0;

 grbm_soft_reset = adev->gfx.grbm_soft_reset;

 if (REG_GET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CP) ||
     REG_GET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPF) ||
     REG_GET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPC) ||
     REG_GET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPG)) {
  int i;

  for (i = 0; i < adev->gfx.num_compute_rings; i++) {
   struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];

   mutex_lock(&adev->srbm_mutex);
   vi_srbm_select(adev, ring->me, ring->pipe, ring->queue, 0);
   gfx_v8_0_deactivate_hqd(adev, 2);
   vi_srbm_select(adev, 0, 0, 0, 0);
   mutex_unlock(&adev->srbm_mutex);
  }
  gfx_v8_0_kiq_resume(adev);
  gfx_v8_0_kcq_resume(adev);
 }

 if (REG_GET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CP) ||
     REG_GET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_GFX))
  gfx_v8_0_cp_gfx_resume(adev);

 gfx_v8_0_cp_test_all_rings(adev);

 adev->gfx.rlc.funcs->start(adev);

 return 0;
}
