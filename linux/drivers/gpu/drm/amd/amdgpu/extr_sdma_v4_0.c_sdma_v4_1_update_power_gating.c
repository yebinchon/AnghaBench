
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_SDMA ;
 int RREG32 (int ) ;
 int SDMA0 ;
 int SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 int mmSDMA0_CNTL ;

__attribute__((used)) static void
sdma_v4_1_update_power_gating(struct amdgpu_device *adev, bool enable)
{
 uint32_t def, data;

 if (enable && (adev->pg_flags & AMD_PG_SUPPORT_SDMA)) {

  def = data = RREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_CNTL));
  data |= SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK;

  if (data != def)
   WREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_CNTL), data);
 } else {

  def = data = RREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_CNTL));
  data &= ~SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK;
  if (data != def)
   WREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_CNTL), data);
 }
}
