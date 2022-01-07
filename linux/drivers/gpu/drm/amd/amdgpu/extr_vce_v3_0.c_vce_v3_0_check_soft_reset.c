
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ vce; int grbm_idx_mutex; } ;


 int AMDGPU_VCE_STATUS_BUSY_MASK ;
 int GET_VCE_INSTANCE (int) ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 int RREG32 (int ) ;
 int SOFT_RESET_VCE0 ;
 int SOFT_RESET_VCE1 ;
 int SRBM_SOFT_RESET ;
 int WREG32 (int ,int ) ;
 int mmGRBM_GFX_INDEX ;
 int mmVCE_STATUS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool vce_v3_0_check_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;
 mutex_lock(&adev->grbm_idx_mutex);
 WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(0));
 if (RREG32(mmVCE_STATUS) & AMDGPU_VCE_STATUS_BUSY_MASK) {
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE0, 1);
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE1, 1);
 }
 WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(1));
 if (RREG32(mmVCE_STATUS) & AMDGPU_VCE_STATUS_BUSY_MASK) {
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE0, 1);
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE1, 1);
 }
 WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(0));
 mutex_unlock(&adev->grbm_idx_mutex);

 if (srbm_soft_reset) {
  adev->vce.srbm_soft_reset = srbm_soft_reset;
  return 1;
 } else {
  adev->vce.srbm_soft_reset = 0;
  return 0;
 }
}
