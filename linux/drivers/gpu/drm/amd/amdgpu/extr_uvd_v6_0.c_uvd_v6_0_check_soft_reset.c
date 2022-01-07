
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int srbm_soft_reset; } ;


 int AMDGPU_UVD_STATUS_BUSY_MASK ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int SOFT_RESET_UVD ;
 int SRBM_SOFT_RESET ;
 int SRBM_STATUS ;
 int UVD_BUSY ;
 int UVD_RQ_PENDING ;
 int mmSRBM_STATUS ;
 int mmUVD_STATUS ;

__attribute__((used)) static bool uvd_v6_0_check_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;
 u32 tmp = RREG32(mmSRBM_STATUS);

 if (REG_GET_FIELD(tmp, SRBM_STATUS, UVD_RQ_PENDING) ||
     REG_GET_FIELD(tmp, SRBM_STATUS, UVD_BUSY) ||
     (RREG32(mmUVD_STATUS) & AMDGPU_UVD_STATUS_BUSY_MASK))
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_UVD, 1);

 if (srbm_soft_reset) {
  adev->uvd.inst->srbm_soft_reset = srbm_soft_reset;
  return 1;
 } else {
  adev->uvd.inst->srbm_soft_reset = 0;
  return 0;
 }
}
