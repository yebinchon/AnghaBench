
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int BIF_MMSCH0_DOORBELL_RANGE ;
 int NBIO ;
 int OFFSET ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int SIZE ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 int mmBIF_MMSCH0_DOORBELL_RANGE ;

__attribute__((used)) static void nbio_v2_3_vcn_doorbell_range(struct amdgpu_device *adev, bool use_doorbell,
      int doorbell_index, int instance)
{
 u32 reg = SOC15_REG_OFFSET(NBIO, 0, mmBIF_MMSCH0_DOORBELL_RANGE);

 u32 doorbell_range = RREG32(reg);

 if (use_doorbell) {
  doorbell_range = REG_SET_FIELD(doorbell_range,
            BIF_MMSCH0_DOORBELL_RANGE, OFFSET,
            doorbell_index);
  doorbell_range = REG_SET_FIELD(doorbell_range,
            BIF_MMSCH0_DOORBELL_RANGE, SIZE, 8);
 } else
  doorbell_range = REG_SET_FIELD(doorbell_range,
            BIF_MMSCH0_DOORBELL_RANGE, SIZE, 0);

 WREG32(reg, doorbell_range);
}
