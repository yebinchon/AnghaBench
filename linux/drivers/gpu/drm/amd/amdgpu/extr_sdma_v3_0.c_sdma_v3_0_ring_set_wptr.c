
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ring {size_t wptr_offs; size_t me; int wptr; scalar_t__ use_pollmem; int doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int WDOORBELL32 (int ,int) ;
 int WREG32 (scalar_t__,int) ;
 int WRITE_ONCE (int ,int) ;
 int lower_32_bits (int ) ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void sdma_v3_0_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell) {
  u32 *wb = (u32 *)&adev->wb.wb[ring->wptr_offs];

  WRITE_ONCE(*wb, (lower_32_bits(ring->wptr) << 2));
  WDOORBELL32(ring->doorbell_index, lower_32_bits(ring->wptr) << 2);
 } else if (ring->use_pollmem) {
  u32 *wb = (u32 *)&adev->wb.wb[ring->wptr_offs];

  WRITE_ONCE(*wb, (lower_32_bits(ring->wptr) << 2));
 } else {
  WREG32(mmSDMA0_GFX_RB_WPTR + sdma_offsets[ring->me], lower_32_bits(ring->wptr) << 2);
 }
}
