
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {size_t me; int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (scalar_t__,int) ;
 int lower_32_bits (int ) ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void cik_sdma_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 WREG32(mmSDMA0_GFX_RB_WPTR + sdma_offsets[ring->me],
          (lower_32_bits(ring->wptr) << 2) & 0x3fffc);
}
