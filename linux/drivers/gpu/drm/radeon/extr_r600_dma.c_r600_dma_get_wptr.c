
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DMA_RB_WPTR ;
 int RREG32 (int ) ;

uint32_t r600_dma_get_wptr(struct radeon_device *rdev,
      struct radeon_ring *ring)
{
 return (RREG32(DMA_RB_WPTR) & 0x3fffc) >> 2;
}
