
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dev; } ;


 int HALT ;
 int REG_SET_FIELD (int,int ,int ,int ) ;
 int RREG32 (scalar_t__) ;
 int SDMA0_F32_CNTL ;
 scalar_t__ SDMA0_REGISTER_OFFSET ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 int SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK ;
 int SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK ;
 int SRBM_STATUS2__SDMA1_BUSY_MASK ;
 int SRBM_STATUS2__SDMA_BUSY_MASK ;
 int WREG32 (scalar_t__,int) ;
 int dev_info (int ,char*,int) ;
 scalar_t__ mmSDMA0_F32_CNTL ;
 scalar_t__ mmSRBM_SOFT_RESET ;
 scalar_t__ mmSRBM_STATUS2 ;
 int udelay (int) ;

__attribute__((used)) static int sdma_v2_4_soft_reset(void *handle)
{
 u32 srbm_soft_reset = 0;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 tmp = RREG32(mmSRBM_STATUS2);

 if (tmp & SRBM_STATUS2__SDMA_BUSY_MASK) {

  tmp = RREG32(mmSDMA0_F32_CNTL + SDMA0_REGISTER_OFFSET);
  tmp = REG_SET_FIELD(tmp, SDMA0_F32_CNTL, HALT, 0);
  WREG32(mmSDMA0_F32_CNTL + SDMA0_REGISTER_OFFSET, tmp);
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK;
 }
 if (tmp & SRBM_STATUS2__SDMA1_BUSY_MASK) {

  tmp = RREG32(mmSDMA0_F32_CNTL + SDMA1_REGISTER_OFFSET);
  tmp = REG_SET_FIELD(tmp, SDMA0_F32_CNTL, HALT, 0);
  WREG32(mmSDMA0_F32_CNTL + SDMA1_REGISTER_OFFSET, tmp);
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK;
 }

 if (srbm_soft_reset) {
  tmp = RREG32(mmSRBM_SOFT_RESET);
  tmp |= srbm_soft_reset;
  dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
  WREG32(mmSRBM_SOFT_RESET, tmp);
  tmp = RREG32(mmSRBM_SOFT_RESET);

  udelay(50);

  tmp &= ~srbm_soft_reset;
  WREG32(mmSRBM_SOFT_RESET, tmp);
  tmp = RREG32(mmSRBM_SOFT_RESET);


  udelay(50);
 }

 return 0;
}
