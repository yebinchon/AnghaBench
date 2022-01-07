
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


 int DRM_DEBUG (char*,int,...) ;
 int READ_ONCE (int) ;
 int RREG32_SDMA (int ,int ) ;
 int mmSDMA0_GFX_RB_WPTR ;
 int mmSDMA0_GFX_RB_WPTR_HI ;

__attribute__((used)) static uint64_t sdma_v4_0_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 u64 wptr;

 if (ring->use_doorbell) {

  wptr = READ_ONCE(*((u64 *)&adev->wb.wb[ring->wptr_offs]));
  DRM_DEBUG("wptr/doorbell before shift == 0x%016llx\n", wptr);
 } else {
  wptr = RREG32_SDMA(ring->me, mmSDMA0_GFX_RB_WPTR_HI);
  wptr = wptr << 32;
  wptr |= RREG32_SDMA(ring->me, mmSDMA0_GFX_RB_WPTR);
  DRM_DEBUG("wptr before shift [%i] wptr == 0x%016llx\n",
    ring->me, wptr);
 }

 return wptr >> 2;
}
