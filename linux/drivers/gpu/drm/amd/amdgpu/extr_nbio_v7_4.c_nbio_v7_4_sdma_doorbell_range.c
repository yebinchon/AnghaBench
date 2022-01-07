
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;


 int BIF_SDMA0_DOORBELL_RANGE ;
 int NBIO ;
 int OFFSET ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32 (scalar_t__) ;
 int SIZE ;
 scalar_t__ SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int mmBIF_SDMA0_DOORBELL_RANGE ;

__attribute__((used)) static void nbio_v7_4_sdma_doorbell_range(struct amdgpu_device *adev, int instance,
   bool use_doorbell, int doorbell_index, int doorbell_size)
{
 u32 reg, doorbell_range;

 if (instance < 2)
  reg = instance +
   SOC15_REG_OFFSET(NBIO, 0, mmBIF_SDMA0_DOORBELL_RANGE);
 else
  reg = instance + 0x4 +
   SOC15_REG_OFFSET(NBIO, 0, mmBIF_SDMA0_DOORBELL_RANGE);

 doorbell_range = RREG32(reg);

 if (use_doorbell) {
  doorbell_range = REG_SET_FIELD(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, OFFSET, doorbell_index);
  doorbell_range = REG_SET_FIELD(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, SIZE, doorbell_size);
 } else
  doorbell_range = REG_SET_FIELD(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, SIZE, 0);

 WREG32(reg, doorbell_range);
}
