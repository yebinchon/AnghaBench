
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_ring {scalar_t__ idx; int wptr; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ R600_RING_TYPE_DMA_INDEX ;
 int RREG32 (scalar_t__) ;
 scalar_t__ SDMA0_GFX_RB_WPTR ;
 scalar_t__ SDMA0_REGISTER_OFFSET ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 int WREG32 (scalar_t__,int) ;

void cik_sdma_set_wptr(struct radeon_device *rdev,
         struct radeon_ring *ring)
{
 u32 reg;

 if (ring->idx == R600_RING_TYPE_DMA_INDEX)
  reg = SDMA0_GFX_RB_WPTR + SDMA0_REGISTER_OFFSET;
 else
  reg = SDMA0_GFX_RB_WPTR + SDMA1_REGISTER_OFFSET;

 WREG32(reg, (ring->wptr << 2) & 0x3fffc);
 (void)RREG32(reg);
}
