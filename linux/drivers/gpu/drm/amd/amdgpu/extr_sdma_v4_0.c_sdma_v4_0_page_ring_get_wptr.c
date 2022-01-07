
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct amdgpu_ring {size_t wptr_offs; int me; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int READ_ONCE (int) ;
 int RREG32_SDMA (int ,int ) ;
 int mmSDMA0_PAGE_RB_WPTR ;
 int mmSDMA0_PAGE_RB_WPTR_HI ;

__attribute__((used)) static uint64_t sdma_v4_0_page_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 u64 wptr;

 if (ring->use_doorbell) {

  wptr = READ_ONCE(*((u64 *)&adev->wb.wb[ring->wptr_offs]));
 } else {
  wptr = RREG32_SDMA(ring->me, mmSDMA0_PAGE_RB_WPTR_HI);
  wptr = wptr << 32;
  wptr |= RREG32_SDMA(ring->me, mmSDMA0_PAGE_RB_WPTR);
 }

 return wptr >> 2;
}
