
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SDMA0 ;
 int SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK ;
 int SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK ;
 int SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK ;
 int SDMA0_POWER_CNTL__PG_CNTL_ENABLE_MASK ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int) ;
 int mmSDMA0_CNTL ;
 int mmSDMA0_POWER_CNTL ;
 int mmSDMA0_POWER_CNTL_DEFAULT ;

__attribute__((used)) static void sdma_v4_1_init_power_gating(struct amdgpu_device *adev)
{
 uint32_t def, data;


 def = data = RREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_POWER_CNTL));
 data |= SDMA0_POWER_CNTL__PG_CNTL_ENABLE_MASK;
 if (data != def)
  WREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_POWER_CNTL), data);


 def = data = RREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_CNTL));
 data |= SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK;
 if (data != def)
  WREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_CNTL), data);


 def = data = RREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_POWER_CNTL));
 data &= ~SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK;
 data |= (mmSDMA0_POWER_CNTL_DEFAULT & SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK);

 data &= ~SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK;
 data |= (mmSDMA0_POWER_CNTL_DEFAULT & SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK);
 if(data != def)
  WREG32(SOC15_REG_OFFSET(SDMA0, 0, mmSDMA0_POWER_CNTL), data);
}
