
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_ring {int doorbell_index; scalar_t__ use_doorbell; } ;
struct amdgpu_device {int dummy; } ;


 int CP_RB_DOORBELL_CONTROL ;
 int CP_RB_DOORBELL_RANGE_LOWER ;
 int CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK ;
 int DOORBELL_EN ;
 int DOORBELL_OFFSET ;
 int DOORBELL_RANGE_LOWER ;
 int GC ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCP_RB_DOORBELL_CONTROL ;
 int mmCP_RB_DOORBELL_RANGE_LOWER ;
 int mmCP_RB_DOORBELL_RANGE_UPPER ;

__attribute__((used)) static void gfx_v10_0_cp_gfx_set_doorbell(struct amdgpu_device *adev,
       struct amdgpu_ring *ring)
{
 u32 tmp;

 tmp = RREG32_SOC15(GC, 0, mmCP_RB_DOORBELL_CONTROL);
 if (ring->use_doorbell) {
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
        DOORBELL_OFFSET, ring->doorbell_index);
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
        DOORBELL_EN, 1);
 } else {
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
        DOORBELL_EN, 0);
 }
 WREG32_SOC15(GC, 0, mmCP_RB_DOORBELL_CONTROL, tmp);
 tmp = REG_SET_FIELD(0, CP_RB_DOORBELL_RANGE_LOWER,
       DOORBELL_RANGE_LOWER, ring->doorbell_index);
 WREG32_SOC15(GC, 0, mmCP_RB_DOORBELL_RANGE_LOWER, tmp);

 WREG32_SOC15(GC, 0, mmCP_RB_DOORBELL_RANGE_UPPER,
       CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK);
}
