
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int harvest_config; } ;
struct amdgpu_device {scalar_t__ asic_type; int grbm_idx_mutex; TYPE_1__ vce; } ;


 scalar_t__ CHIP_STONEY ;
 int CLK_EN ;
 int ECPU_SOFT_RESET ;
 int GET_VCE_INSTANCE (int) ;
 int VCE_SOFT_RESET ;
 int VCE_VCPU_CNTL ;
 int WREG32 (int ,int ) ;
 int WREG32_FIELD (int ,int ,int) ;
 int WREG32_P (int ,int ,int) ;
 int mmGRBM_GFX_INDEX ;
 int mmGRBM_GFX_INDEX_DEFAULT ;
 int mmVCE_STATUS ;
 int mmVCE_VCPU_CNTL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vce_v3_0_stop(struct amdgpu_device *adev)
{
 int idx;

 mutex_lock(&adev->grbm_idx_mutex);
 for (idx = 0; idx < 2; ++idx) {
  if (adev->vce.harvest_config & (1 << idx))
   continue;

  WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(idx));

  if (adev->asic_type >= CHIP_STONEY)
   WREG32_P(mmVCE_VCPU_CNTL, 0, ~0x200001);
  else
   WREG32_FIELD(VCE_VCPU_CNTL, CLK_EN, 0);


  WREG32_FIELD(VCE_SOFT_RESET, ECPU_SOFT_RESET, 1);


  WREG32(mmVCE_STATUS, 0);
 }

 WREG32(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
 mutex_unlock(&adev->grbm_idx_mutex);

 return 0;
}
