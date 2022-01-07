
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {size_t wptr_offs; int wptr; int doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
typedef int atomic64_t ;


 int GC ;
 int WDOORBELL64 (int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int atomic64_set (int *,int ) ;
 int lower_32_bits (int ) ;
 int mmCP_RB0_WPTR ;
 int mmCP_RB0_WPTR_HI ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void gfx_v10_0_ring_set_wptr_gfx(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell) {

  atomic64_set((atomic64_t *)&adev->wb.wb[ring->wptr_offs], ring->wptr);
  WDOORBELL64(ring->doorbell_index, ring->wptr);
 } else {
  WREG32_SOC15(GC, 0, mmCP_RB0_WPTR, lower_32_bits(ring->wptr));
  WREG32_SOC15(GC, 0, mmCP_RB0_WPTR_HI, upper_32_bits(ring->wptr));
 }
}
