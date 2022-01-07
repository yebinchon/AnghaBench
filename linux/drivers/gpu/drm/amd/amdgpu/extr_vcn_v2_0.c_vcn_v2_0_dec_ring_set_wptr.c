
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {size_t wptr_offs; int wptr; int doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int* wb; } ;
struct amdgpu_device {int pg_flags; TYPE_1__ wb; } ;


 int AMD_PG_SUPPORT_VCN_DPG ;
 int UVD ;
 int WDOORBELL32 (int ,int) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int lower_32_bits (int ) ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_SCRATCH2 ;

__attribute__((used)) static void vcn_v2_0_dec_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)
  WREG32_SOC15(UVD, 0, mmUVD_SCRATCH2,
   lower_32_bits(ring->wptr) | 0x80000000);

 if (ring->use_doorbell) {
  adev->wb.wb[ring->wptr_offs] = lower_32_bits(ring->wptr);
  WDOORBELL32(ring->doorbell_index, lower_32_bits(ring->wptr));
 } else {
  WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR, lower_32_bits(ring->wptr));
 }
}
