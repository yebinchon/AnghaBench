
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct amdgpu_ring {size_t wptr_offs; int wptr; int me; int doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int WDOORBELL64 (int ,int) ;
 int WREG32_SDMA (int ,int ,int ) ;
 int WRITE_ONCE (int ,int) ;
 int lower_32_bits (int) ;
 int mmSDMA0_PAGE_RB_WPTR ;
 int mmSDMA0_PAGE_RB_WPTR_HI ;
 int upper_32_bits (int) ;

__attribute__((used)) static void sdma_v4_0_page_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell) {
  u64 *wb = (u64 *)&adev->wb.wb[ring->wptr_offs];


  WRITE_ONCE(*wb, (ring->wptr << 2));
  WDOORBELL64(ring->doorbell_index, ring->wptr << 2);
 } else {
  uint64_t wptr = ring->wptr << 2;

  WREG32_SDMA(ring->me, mmSDMA0_PAGE_RB_WPTR,
       lower_32_bits(wptr));
  WREG32_SDMA(ring->me, mmSDMA0_PAGE_RB_WPTR_HI,
       upper_32_bits(wptr));
 }
}
