
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ max_shader_engines; scalar_t__ max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {scalar_t__ usec_timeout; int grbm_idx_mutex; TYPE_2__ gfx; } ;


 int DRM_INFO (char*,scalar_t__,scalar_t__) ;
 scalar_t__ RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK ;
 scalar_t__ RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK ;
 scalar_t__ RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK ;
 scalar_t__ RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK ;
 scalar_t__ RREG32 (int ) ;
 int gfx_v8_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mmRLC_SERDES_CU_MASTER_BUSY ;
 int mmRLC_SERDES_NONCU_MASTER_BUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v8_0_wait_for_rlc_serdes(struct amdgpu_device *adev)
{
 u32 i, j, k;
 u32 mask;

 mutex_lock(&adev->grbm_idx_mutex);
 for (i = 0; i < adev->gfx.config.max_shader_engines; i++) {
  for (j = 0; j < adev->gfx.config.max_sh_per_se; j++) {
   gfx_v8_0_select_se_sh(adev, i, j, 0xffffffff);
   for (k = 0; k < adev->usec_timeout; k++) {
    if (RREG32(mmRLC_SERDES_CU_MASTER_BUSY) == 0)
     break;
    udelay(1);
   }
   if (k == adev->usec_timeout) {
    gfx_v8_0_select_se_sh(adev, 0xffffffff,
            0xffffffff, 0xffffffff);
    mutex_unlock(&adev->grbm_idx_mutex);
    DRM_INFO("Timeout wait for RLC serdes %u,%u\n",
      i, j);
    return;
   }
  }
 }
 gfx_v8_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
 mutex_unlock(&adev->grbm_idx_mutex);

 mask = RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK |
  RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK |
  RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK |
  RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK;
 for (k = 0; k < adev->usec_timeout; k++) {
  if ((RREG32(mmRLC_SERDES_NONCU_MASTER_BUSY) & mask) == 0)
   break;
  udelay(1);
 }
}
