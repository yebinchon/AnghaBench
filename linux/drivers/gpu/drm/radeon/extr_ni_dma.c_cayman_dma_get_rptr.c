
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct radeon_ring {int rptr_offs; scalar_t__ idx; } ;
struct TYPE_2__ {int* wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int DMA0_REGISTER_OFFSET ;
 int DMA1_REGISTER_OFFSET ;
 int DMA_RB_RPTR ;
 scalar_t__ R600_RING_TYPE_DMA_INDEX ;
 int RREG32 (int) ;

uint32_t cayman_dma_get_rptr(struct radeon_device *rdev,
        struct radeon_ring *ring)
{
 u32 rptr, reg;

 if (rdev->wb.enabled) {
  rptr = rdev->wb.wb[ring->rptr_offs/4];
 } else {
  if (ring->idx == R600_RING_TYPE_DMA_INDEX)
   reg = DMA_RB_RPTR + DMA0_REGISTER_OFFSET;
  else
   reg = DMA_RB_RPTR + DMA1_REGISTER_OFFSET;

  rptr = RREG32(reg);
 }

 return (rptr & 0x3fffc) >> 2;
}
