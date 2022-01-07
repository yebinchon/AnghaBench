
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_ring {size_t wptr_offs; struct amdgpu_device* adev; scalar_t__ use_doorbell; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int RREG32 (int ) ;
 int mmCP_RB0_WPTR ;

__attribute__((used)) static u64 gfx_v8_0_ring_get_wptr_gfx(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell)

  return ring->adev->wb.wb[ring->wptr_offs];
 else
  return RREG32(mmCP_RB0_WPTR);
}
