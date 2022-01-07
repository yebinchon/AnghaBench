
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_cu_per_sh; int max_shader_engines; int max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {scalar_t__ asic_type; int grbm_idx_mutex; TYPE_2__ gfx; } ;


 scalar_t__ CHIP_NAVI10 ;
 scalar_t__ CHIP_NAVI12 ;
 scalar_t__ CHIP_NAVI14 ;
 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_gfx_create_bitmask (int) ;
 int gfx_v10_0_get_wgp_active_bitmap_per_sh (struct amdgpu_device*) ;
 int gfx_v10_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mmGCRD_SA_TARGETS_DISABLE ;
 int mmUTCL1_UTCL0_INVREQ_DISABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gfx_v10_0_tcp_harvest(struct amdgpu_device *adev)
{
 int i, j, k;
 int max_wgp_per_sh = adev->gfx.config.max_cu_per_sh >> 1;
 u32 tmp, wgp_active_bitmap = 0;
 u32 gcrd_targets_disable_tcp = 0;
 u32 utcl_invreq_disable = 0;





 u32 gcrd_targets_disable_mask = amdgpu_gfx_create_bitmask(
  2 * max_wgp_per_sh +
  max_wgp_per_sh +
  4);





 u32 utcl_invreq_disable_mask = amdgpu_gfx_create_bitmask(
  2 * max_wgp_per_sh +
  2 * max_wgp_per_sh +
  4 +
  1);

 if (adev->asic_type == CHIP_NAVI10 ||
     adev->asic_type == CHIP_NAVI14 ||
     adev->asic_type == CHIP_NAVI12) {
  mutex_lock(&adev->grbm_idx_mutex);
  for (i = 0; i < adev->gfx.config.max_shader_engines; i++) {
   for (j = 0; j < adev->gfx.config.max_sh_per_se; j++) {
    gfx_v10_0_select_se_sh(adev, i, j, 0xffffffff);
    wgp_active_bitmap = gfx_v10_0_get_wgp_active_bitmap_per_sh(adev);




    gcrd_targets_disable_tcp = 0;

    utcl_invreq_disable = 0;

    for (k = 0; k < max_wgp_per_sh; k++) {
     if (!(wgp_active_bitmap & (1 << k))) {
      gcrd_targets_disable_tcp |= 3 << (2 * k);
      utcl_invreq_disable |= (3 << (2 * k)) |
       (3 << (2 * (max_wgp_per_sh + k)));
     }
    }

    tmp = RREG32_SOC15(GC, 0, mmUTCL1_UTCL0_INVREQ_DISABLE);

    tmp &= 0xffffffff << (4 * max_wgp_per_sh);
    tmp |= (utcl_invreq_disable & utcl_invreq_disable_mask);
    WREG32_SOC15(GC, 0, mmUTCL1_UTCL0_INVREQ_DISABLE, tmp);

    tmp = RREG32_SOC15(GC, 0, mmGCRD_SA_TARGETS_DISABLE);

    tmp &= 0xffffffff << (2 * max_wgp_per_sh);
    tmp |= (gcrd_targets_disable_tcp & gcrd_targets_disable_mask);
    WREG32_SOC15(GC, 0, mmGCRD_SA_TARGETS_DISABLE, tmp);
   }
  }

  gfx_v10_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
  mutex_unlock(&adev->grbm_idx_mutex);
 }
}
