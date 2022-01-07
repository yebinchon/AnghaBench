
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ring {int doorbell_index; scalar_t__ use_doorbell; } ;
struct TYPE_2__ {int gfx_ring0; } ;
struct amdgpu_device {scalar_t__ asic_type; int flags; TYPE_1__ doorbell_index; } ;


 int AMD_IS_APU ;
 scalar_t__ CHIP_TOPAZ ;
 int CP_RB_DOORBELL_CONTROL ;
 int CP_RB_DOORBELL_RANGE_LOWER ;
 int CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK ;
 int DOORBELL_EN ;
 int DOORBELL_HIT ;
 int DOORBELL_OFFSET ;
 int DOORBELL_RANGE_LOWER ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmCP_RB_DOORBELL_CONTROL ;
 int mmCP_RB_DOORBELL_RANGE_LOWER ;
 int mmCP_RB_DOORBELL_RANGE_UPPER ;

__attribute__((used)) static void gfx_v8_0_set_cpg_door_bell(struct amdgpu_device *adev, struct amdgpu_ring *ring)
{
 u32 tmp;

 if (adev->asic_type == CHIP_TOPAZ)
  return;

 tmp = RREG32(mmCP_RB_DOORBELL_CONTROL);

 if (ring->use_doorbell) {
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
    DOORBELL_OFFSET, ring->doorbell_index);
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
      DOORBELL_HIT, 0);
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
         DOORBELL_EN, 1);
 } else {
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL, DOORBELL_EN, 0);
 }

 WREG32(mmCP_RB_DOORBELL_CONTROL, tmp);

 if (adev->flags & AMD_IS_APU)
  return;

 tmp = REG_SET_FIELD(0, CP_RB_DOORBELL_RANGE_LOWER,
     DOORBELL_RANGE_LOWER,
     adev->doorbell_index.gfx_ring0);
 WREG32(mmCP_RB_DOORBELL_RANGE_LOWER, tmp);

 WREG32(mmCP_RB_DOORBELL_RANGE_UPPER,
  CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK);
}
