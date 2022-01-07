
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_10__ {int private_aperture_start; int shared_aperture_start; } ;
struct TYPE_9__ {TYPE_3__* id_mgr; } ;
struct TYPE_6__ {int db_debug2; } ;
struct TYPE_7__ {TYPE_1__ config; int cu_info; } ;
struct amdgpu_device {int srbm_mutex; TYPE_5__ gmc; TYPE_4__ vm_manager; TYPE_2__ gfx; } ;
struct TYPE_8__ {int num_ids; } ;


 int ALIGNMENT_MODE ;
 size_t AMDGPU_GFXHUB_0 ;
 int GC ;
 int GRBM_CNTL ;
 int PRIVATE_BASE ;
 int READ_TIMEOUT ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 int RETRY_DISABLE ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SHARED_BASE ;
 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ;
 int SH_MEM_BASES ;
 int SH_MEM_CONFIG ;
 int WREG32_FIELD15_RLC (int ,int ,int ,int ,int) ;
 int WREG32_SOC15_RLC (int ,int ,int ,scalar_t__) ;
 int amdgpu_noretry ;
 int gfx_v9_0_get_cu_info (struct amdgpu_device*,int *) ;
 int gfx_v9_0_init_compute_vmid (struct amdgpu_device*) ;
 int gfx_v9_0_init_gds_vmid (struct amdgpu_device*) ;
 int gfx_v9_0_setup_rb (struct amdgpu_device*) ;
 int gfx_v9_0_tiling_mode_table_init (struct amdgpu_device*) ;
 int mmDB_DEBUG2 ;
 int mmSH_MEM_BASES ;
 int mmSH_MEM_CONFIG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int soc15_grbm_select (struct amdgpu_device*,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v9_0_constants_init(struct amdgpu_device *adev)
{
 u32 tmp;
 int i;

 WREG32_FIELD15_RLC(GC, 0, GRBM_CNTL, READ_TIMEOUT, 0xff);

 gfx_v9_0_tiling_mode_table_init(adev);

 gfx_v9_0_setup_rb(adev);
 gfx_v9_0_get_cu_info(adev, &adev->gfx.cu_info);
 adev->gfx.config.db_debug2 = RREG32_SOC15(GC, 0, mmDB_DEBUG2);



 mutex_lock(&adev->srbm_mutex);
 for (i = 0; i < adev->vm_manager.id_mgr[AMDGPU_GFXHUB_0].num_ids; i++) {
  soc15_grbm_select(adev, 0, 0, 0, i);

  if (i == 0) {
   tmp = REG_SET_FIELD(0, SH_MEM_CONFIG, ALIGNMENT_MODE,
         SH_MEM_ALIGNMENT_MODE_UNALIGNED);
   tmp = REG_SET_FIELD(tmp, SH_MEM_CONFIG, RETRY_DISABLE,
         !!amdgpu_noretry);
   WREG32_SOC15_RLC(GC, 0, mmSH_MEM_CONFIG, tmp);
   WREG32_SOC15_RLC(GC, 0, mmSH_MEM_BASES, 0);
  } else {
   tmp = REG_SET_FIELD(0, SH_MEM_CONFIG, ALIGNMENT_MODE,
         SH_MEM_ALIGNMENT_MODE_UNALIGNED);
   tmp = REG_SET_FIELD(tmp, SH_MEM_CONFIG, RETRY_DISABLE,
         !!amdgpu_noretry);
   WREG32_SOC15_RLC(GC, 0, mmSH_MEM_CONFIG, tmp);
   tmp = REG_SET_FIELD(0, SH_MEM_BASES, PRIVATE_BASE,
    (adev->gmc.private_aperture_start >> 48));
   tmp = REG_SET_FIELD(tmp, SH_MEM_BASES, SHARED_BASE,
    (adev->gmc.shared_aperture_start >> 48));
   WREG32_SOC15_RLC(GC, 0, mmSH_MEM_BASES, tmp);
  }
 }
 soc15_grbm_select(adev, 0, 0, 0, 0);

 mutex_unlock(&adev->srbm_mutex);

 gfx_v9_0_init_compute_vmid(adev);
 gfx_v9_0_init_gds_vmid(adev);
}
