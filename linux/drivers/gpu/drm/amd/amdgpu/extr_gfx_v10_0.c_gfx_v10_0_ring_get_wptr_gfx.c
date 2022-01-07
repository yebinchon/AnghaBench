
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_ring {size_t wptr_offs; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
typedef int atomic64_t ;


 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int atomic64_read (int *) ;
 int mmCP_RB0_WPTR ;
 int mmCP_RB0_WPTR_HI ;

__attribute__((used)) static u64 gfx_v10_0_ring_get_wptr_gfx(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 u64 wptr;


 if (ring->use_doorbell) {
  wptr = atomic64_read((atomic64_t *)&adev->wb.wb[ring->wptr_offs]);
 } else {
  wptr = RREG32_SOC15(GC, 0, mmCP_RB0_WPTR);
  wptr += (u64)RREG32_SOC15(GC, 0, mmCP_RB0_WPTR_HI) << 32;
 }

 return wptr;
}
