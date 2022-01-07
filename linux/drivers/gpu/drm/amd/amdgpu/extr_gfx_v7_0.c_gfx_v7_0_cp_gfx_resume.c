
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct amdgpu_ring {int ring_size; int wptr; int rptr_offs; int gpu_addr; } ;
struct TYPE_4__ {int gpu_addr; } ;
struct TYPE_3__ {struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ wb; TYPE_1__ gfx; } ;


 int AMDGPU_GPU_PAGE_SIZE ;
 scalar_t__ CHIP_HAWAII ;
 int CP_RB0_CNTL__BUF_SWAP__SHIFT ;
 int CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK ;
 int WREG32 (int ,int) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int gfx_v7_0_cp_gfx_start (struct amdgpu_device*) ;
 int lower_32_bits (int) ;
 int mdelay (int) ;
 int mmCP_RB0_BASE ;
 int mmCP_RB0_BASE_HI ;
 int mmCP_RB0_CNTL ;
 int mmCP_RB0_RPTR_ADDR ;
 int mmCP_RB0_RPTR_ADDR_HI ;
 int mmCP_RB0_WPTR ;
 int mmCP_RB_VMID ;
 int mmCP_RB_WPTR_DELAY ;
 int mmCP_SEM_INCOMPLETE_TIMER_CNTL ;
 int mmCP_SEM_WAIT_TIMER ;
 int mmSCRATCH_ADDR ;
 int mmSCRATCH_UMSK ;
 int order_base_2 (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int gfx_v7_0_cp_gfx_resume(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 u32 tmp;
 u32 rb_bufsz;
 u64 rb_addr, rptr_addr;
 int r;

 WREG32(mmCP_SEM_WAIT_TIMER, 0x0);
 if (adev->asic_type != CHIP_HAWAII)
  WREG32(mmCP_SEM_INCOMPLETE_TIMER_CNTL, 0x0);


 WREG32(mmCP_RB_WPTR_DELAY, 0);


 WREG32(mmCP_RB_VMID, 0);

 WREG32(mmSCRATCH_ADDR, 0);



 ring = &adev->gfx.gfx_ring[0];
 rb_bufsz = order_base_2(ring->ring_size / 8);
 tmp = (order_base_2(AMDGPU_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;



 WREG32(mmCP_RB0_CNTL, tmp);


 WREG32(mmCP_RB0_CNTL, tmp | CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK);
 ring->wptr = 0;
 WREG32(mmCP_RB0_WPTR, lower_32_bits(ring->wptr));


 rptr_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
 WREG32(mmCP_RB0_RPTR_ADDR, lower_32_bits(rptr_addr));
 WREG32(mmCP_RB0_RPTR_ADDR_HI, upper_32_bits(rptr_addr) & 0xFF);


 WREG32(mmSCRATCH_UMSK, 0);

 mdelay(1);
 WREG32(mmCP_RB0_CNTL, tmp);

 rb_addr = ring->gpu_addr >> 8;
 WREG32(mmCP_RB0_BASE, rb_addr);
 WREG32(mmCP_RB0_BASE_HI, upper_32_bits(rb_addr));


 gfx_v7_0_cp_gfx_start(adev);
 r = amdgpu_ring_test_helper(ring);
 if (r)
  return r;

 return 0;
}
