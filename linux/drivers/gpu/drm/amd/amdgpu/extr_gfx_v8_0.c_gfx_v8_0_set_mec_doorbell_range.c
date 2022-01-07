
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kiq; int mec_ring7; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ doorbell_index; } ;


 scalar_t__ CHIP_TONGA ;
 int CP_PQ_STATUS ;
 int DOORBELL_ENABLE ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int mmCP_MEC_DOORBELL_RANGE_LOWER ;
 int mmCP_MEC_DOORBELL_RANGE_UPPER ;

__attribute__((used)) static void gfx_v8_0_set_mec_doorbell_range(struct amdgpu_device *adev)
{
 if (adev->asic_type > CHIP_TONGA) {
  WREG32(mmCP_MEC_DOORBELL_RANGE_LOWER, adev->doorbell_index.kiq << 2);
  WREG32(mmCP_MEC_DOORBELL_RANGE_UPPER, adev->doorbell_index.mec_ring7 << 2);
 }

 WREG32_FIELD(CP_PQ_STATUS, DOORBELL_ENABLE, 1);
}
