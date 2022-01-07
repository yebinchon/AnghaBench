
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct radeon_ring {int ring_size; int wptr; int gpu_addr; int ready; } ;
struct TYPE_8__ {int real_vram_size; } ;
struct TYPE_5__ {int gpu_addr; int enabled; } ;
struct radeon_device {scalar_t__ family; TYPE_4__ mc; TYPE_3__* asic; struct radeon_ring* ring; TYPE_1__ wb; } ;
struct TYPE_6__ {size_t copy_ring_index; } ;
struct TYPE_7__ {TYPE_2__ copy; } ;


 int BUF_SWAP_32BIT ;
 scalar_t__ CHIP_HAWAII ;
 int CP_RB0_BASE ;
 int CP_RB0_BASE_HI ;
 int CP_RB0_CNTL ;
 int CP_RB0_RPTR_ADDR ;
 int CP_RB0_RPTR_ADDR_HI ;
 int CP_RB0_WPTR ;
 int CP_RB_VMID ;
 int CP_RB_WPTR_DELAY ;
 int CP_SEM_INCOMPLETE_TIMER_CNTL ;
 int CP_SEM_WAIT_TIMER ;
 int RADEON_GPU_PAGE_SIZE ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int RADEON_WB_CP_RPTR_OFFSET ;
 int RADEON_WB_SCRATCH_OFFSET ;
 int RB_NO_UPDATE ;
 int RB_RPTR_WR_ENA ;
 int SCRATCH_ADDR ;
 int SCRATCH_UMSK ;
 int WREG32 (int ,int) ;
 int cik_cp_gfx_start (struct radeon_device*) ;
 int mdelay (int) ;
 int order_base_2 (int) ;
 int radeon_ring_test (struct radeon_device*,size_t,struct radeon_ring*) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int cik_cp_gfx_resume(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 u32 tmp;
 u32 rb_bufsz;
 u64 rb_addr;
 int r;

 WREG32(CP_SEM_WAIT_TIMER, 0x0);
 if (rdev->family != CHIP_HAWAII)
  WREG32(CP_SEM_INCOMPLETE_TIMER_CNTL, 0x0);


 WREG32(CP_RB_WPTR_DELAY, 0);


 WREG32(CP_RB_VMID, 0);

 WREG32(SCRATCH_ADDR, ((rdev->wb.gpu_addr + RADEON_WB_SCRATCH_OFFSET) >> 8) & 0xFFFFFFFF);



 ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 rb_bufsz = order_base_2(ring->ring_size / 8);
 tmp = (order_base_2(RADEON_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;



 WREG32(CP_RB0_CNTL, tmp);


 WREG32(CP_RB0_CNTL, tmp | RB_RPTR_WR_ENA);
 ring->wptr = 0;
 WREG32(CP_RB0_WPTR, ring->wptr);


 WREG32(CP_RB0_RPTR_ADDR, (rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) & 0xFFFFFFFC);
 WREG32(CP_RB0_RPTR_ADDR_HI, upper_32_bits(rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) & 0xFF);


 WREG32(SCRATCH_UMSK, 0);

 if (!rdev->wb.enabled)
  tmp |= RB_NO_UPDATE;

 mdelay(1);
 WREG32(CP_RB0_CNTL, tmp);

 rb_addr = ring->gpu_addr >> 8;
 WREG32(CP_RB0_BASE, rb_addr);
 WREG32(CP_RB0_BASE_HI, upper_32_bits(rb_addr));


 cik_cp_gfx_start(rdev);
 rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = 1;
 r = radeon_ring_test(rdev, RADEON_RING_TYPE_GFX_INDEX, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
 if (r) {
  rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = 0;
  return r;
 }

 if (rdev->asic->copy.copy_ring_index == RADEON_RING_TYPE_GFX_INDEX)
  radeon_ttm_set_active_vram_size(rdev, rdev->mc.real_vram_size);

 return 0;
}
