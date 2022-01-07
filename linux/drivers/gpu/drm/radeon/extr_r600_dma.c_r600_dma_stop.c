
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int visible_vram_size; } ;
struct radeon_device {TYPE_4__* ring; TYPE_3__ mc; TYPE_2__* asic; } ;
struct TYPE_8__ {int ready; } ;
struct TYPE_5__ {size_t copy_ring_index; } ;
struct TYPE_6__ {TYPE_1__ copy; } ;


 int DMA_RB_CNTL ;
 int DMA_RB_ENABLE ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;

void r600_dma_stop(struct radeon_device *rdev)
{
 u32 rb_cntl = RREG32(DMA_RB_CNTL);

 if (rdev->asic->copy.copy_ring_index == R600_RING_TYPE_DMA_INDEX)
  radeon_ttm_set_active_vram_size(rdev, rdev->mc.visible_vram_size);

 rb_cntl &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL, rb_cntl);

 rdev->ring[R600_RING_TYPE_DMA_INDEX].ready = 0;
}
