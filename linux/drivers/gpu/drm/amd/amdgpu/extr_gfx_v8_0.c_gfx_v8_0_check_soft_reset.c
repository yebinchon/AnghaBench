
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int grbm_soft_reset; int srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int CPC_BUSY ;
 int CPF_BUSY ;
 int CPG_BUSY ;
 int GRBM_RQ_PENDING ;
 int GRBM_SOFT_RESET ;
 int GRBM_STATUS2 ;
 int GRBM_STATUS__BCI_BUSY_MASK ;
 int GRBM_STATUS__CB_BUSY_MASK ;
 int GRBM_STATUS__CP_BUSY_MASK ;
 int GRBM_STATUS__CP_COHERENCY_BUSY_MASK ;
 int GRBM_STATUS__DB_BUSY_MASK ;
 int GRBM_STATUS__GDS_BUSY_MASK ;
 int GRBM_STATUS__IA_BUSY_MASK ;
 int GRBM_STATUS__IA_BUSY_NO_DMA_MASK ;
 int GRBM_STATUS__PA_BUSY_MASK ;
 int GRBM_STATUS__SC_BUSY_MASK ;
 int GRBM_STATUS__SPI_BUSY_MASK ;
 int GRBM_STATUS__SX_BUSY_MASK ;
 int GRBM_STATUS__TA_BUSY_MASK ;
 int GRBM_STATUS__VGT_BUSY_MASK ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RLC_BUSY ;
 int RREG32 (int ) ;
 int SEM_BUSY ;
 int SOFT_RESET_CP ;
 int SOFT_RESET_CPC ;
 int SOFT_RESET_CPF ;
 int SOFT_RESET_CPG ;
 int SOFT_RESET_GFX ;
 int SOFT_RESET_GRBM ;
 int SOFT_RESET_RLC ;
 int SOFT_RESET_SEM ;
 int SRBM_SOFT_RESET ;
 int SRBM_STATUS ;
 int mmGRBM_STATUS ;
 int mmGRBM_STATUS2 ;
 int mmSRBM_STATUS ;

__attribute__((used)) static bool gfx_v8_0_check_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
 u32 tmp;


 tmp = RREG32(mmGRBM_STATUS);
 if (tmp & (GRBM_STATUS__PA_BUSY_MASK | GRBM_STATUS__SC_BUSY_MASK |
     GRBM_STATUS__BCI_BUSY_MASK | GRBM_STATUS__SX_BUSY_MASK |
     GRBM_STATUS__TA_BUSY_MASK | GRBM_STATUS__VGT_BUSY_MASK |
     GRBM_STATUS__DB_BUSY_MASK | GRBM_STATUS__CB_BUSY_MASK |
     GRBM_STATUS__GDS_BUSY_MASK | GRBM_STATUS__SPI_BUSY_MASK |
     GRBM_STATUS__IA_BUSY_MASK | GRBM_STATUS__IA_BUSY_NO_DMA_MASK |
     GRBM_STATUS__CP_BUSY_MASK | GRBM_STATUS__CP_COHERENCY_BUSY_MASK)) {
  grbm_soft_reset = REG_SET_FIELD(grbm_soft_reset,
      GRBM_SOFT_RESET, SOFT_RESET_CP, 1);
  grbm_soft_reset = REG_SET_FIELD(grbm_soft_reset,
      GRBM_SOFT_RESET, SOFT_RESET_GFX, 1);
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset,
      SRBM_SOFT_RESET, SOFT_RESET_GRBM, 1);
 }


 tmp = RREG32(mmGRBM_STATUS2);
 if (REG_GET_FIELD(tmp, GRBM_STATUS2, RLC_BUSY))
  grbm_soft_reset = REG_SET_FIELD(grbm_soft_reset,
      GRBM_SOFT_RESET, SOFT_RESET_RLC, 1);

 if (REG_GET_FIELD(tmp, GRBM_STATUS2, CPF_BUSY) ||
     REG_GET_FIELD(tmp, GRBM_STATUS2, CPC_BUSY) ||
     REG_GET_FIELD(tmp, GRBM_STATUS2, CPG_BUSY)) {
  grbm_soft_reset = REG_SET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET,
      SOFT_RESET_CPF, 1);
  grbm_soft_reset = REG_SET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET,
      SOFT_RESET_CPC, 1);
  grbm_soft_reset = REG_SET_FIELD(grbm_soft_reset, GRBM_SOFT_RESET,
      SOFT_RESET_CPG, 1);
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET,
      SOFT_RESET_GRBM, 1);
 }


 tmp = RREG32(mmSRBM_STATUS);
 if (REG_GET_FIELD(tmp, SRBM_STATUS, GRBM_RQ_PENDING))
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset,
      SRBM_SOFT_RESET, SOFT_RESET_GRBM, 1);
 if (REG_GET_FIELD(tmp, SRBM_STATUS, SEM_BUSY))
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset,
      SRBM_SOFT_RESET, SOFT_RESET_SEM, 1);

 if (grbm_soft_reset || srbm_soft_reset) {
  adev->gfx.grbm_soft_reset = grbm_soft_reset;
  adev->gfx.srbm_soft_reset = srbm_soft_reset;
  return 1;
 } else {
  adev->gfx.grbm_soft_reset = 0;
  adev->gfx.srbm_soft_reset = 0;
  return 0;
 }
}
