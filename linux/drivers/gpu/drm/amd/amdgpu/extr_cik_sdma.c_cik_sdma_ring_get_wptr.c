
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {size_t me; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (scalar_t__) ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static uint64_t cik_sdma_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 return (RREG32(mmSDMA0_GFX_RB_WPTR + sdma_offsets[ring->me]) & 0x3fffc) >> 2;
}
