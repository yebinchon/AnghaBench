
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int wptr; } ;
struct radeon_device {int dummy; } ;


 int DMA_RB_WPTR ;
 int WREG32 (int ,int) ;

void r600_dma_set_wptr(struct radeon_device *rdev,
         struct radeon_ring *ring)
{
 WREG32(DMA_RB_WPTR, (ring->wptr << 2) & 0x3fffc);
}
