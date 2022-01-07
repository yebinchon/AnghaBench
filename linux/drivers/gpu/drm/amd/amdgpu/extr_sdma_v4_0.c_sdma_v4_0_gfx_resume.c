
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_8__ {int ready; } ;
struct amdgpu_ring {int rptr_offs; int gpu_addr; int use_doorbell; int doorbell_index; int wptr_offs; TYPE_4__ sched; scalar_t__ wptr; } ;
struct TYPE_7__ {scalar_t__ gpu_addr; } ;
struct TYPE_6__ {TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_3__ wb; TYPE_2__ sdma; } ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;


 int ENABLE ;
 int F32_POLL_ENABLE ;
 int IB_ENABLE ;
 int IB_SWAP_ENABLE ;
 int OFFSET ;
 int RB_ENABLE ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RPTR_WRITEBACK_ENABLE ;
 int RREG32_SDMA (unsigned int,int ) ;
 int SDMA0_GFX_DOORBELL ;
 int SDMA0_GFX_DOORBELL_OFFSET ;
 int SDMA0_GFX_IB_CNTL ;
 int SDMA0_GFX_RB_CNTL ;
 int SDMA0_GFX_RB_WPTR_POLL_CNTL ;
 int WREG32_SDMA (unsigned int,int ,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int lower_32_bits (scalar_t__) ;
 int mmSDMA0_GFX_DOORBELL ;
 int mmSDMA0_GFX_DOORBELL_OFFSET ;
 int mmSDMA0_GFX_IB_CNTL ;
 int mmSDMA0_GFX_MINOR_PTR_UPDATE ;
 int mmSDMA0_GFX_RB_BASE ;
 int mmSDMA0_GFX_RB_BASE_HI ;
 int mmSDMA0_GFX_RB_CNTL ;
 int mmSDMA0_GFX_RB_RPTR ;
 int mmSDMA0_GFX_RB_RPTR_ADDR_HI ;
 int mmSDMA0_GFX_RB_RPTR_ADDR_LO ;
 int mmSDMA0_GFX_RB_RPTR_HI ;
 int mmSDMA0_GFX_RB_WPTR ;
 int mmSDMA0_GFX_RB_WPTR_HI ;
 int mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI ;
 int mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO ;
 int mmSDMA0_GFX_RB_WPTR_POLL_CNTL ;
 int sdma_v4_0_rb_cntl (struct amdgpu_ring*,int) ;
 int sdma_v4_0_ring_set_wptr (struct amdgpu_ring*) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void sdma_v4_0_gfx_resume(struct amdgpu_device *adev, unsigned int i)
{
 struct amdgpu_ring *ring = &adev->sdma.instance[i].ring;
 u32 rb_cntl, ib_cntl, wptr_poll_cntl;
 u32 wb_offset;
 u32 doorbell;
 u32 doorbell_offset;
 u64 wptr_gpu_addr;

 wb_offset = (ring->rptr_offs * 4);

 rb_cntl = RREG32_SDMA(i, mmSDMA0_GFX_RB_CNTL);
 rb_cntl = sdma_v4_0_rb_cntl(ring, rb_cntl);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_CNTL, rb_cntl);


 WREG32_SDMA(i, mmSDMA0_GFX_RB_RPTR, 0);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_RPTR_HI, 0);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_WPTR, 0);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_WPTR_HI, 0);


 WREG32_SDMA(i, mmSDMA0_GFX_RB_RPTR_ADDR_HI,
        upper_32_bits(adev->wb.gpu_addr + wb_offset) & 0xFFFFFFFF);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_RPTR_ADDR_LO,
        lower_32_bits(adev->wb.gpu_addr + wb_offset) & 0xFFFFFFFC);

 rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL,
    RPTR_WRITEBACK_ENABLE, 1);

 WREG32_SDMA(i, mmSDMA0_GFX_RB_BASE, ring->gpu_addr >> 8);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_BASE_HI, ring->gpu_addr >> 40);

 ring->wptr = 0;


 WREG32_SDMA(i, mmSDMA0_GFX_MINOR_PTR_UPDATE, 1);

 doorbell = RREG32_SDMA(i, mmSDMA0_GFX_DOORBELL);
 doorbell_offset = RREG32_SDMA(i, mmSDMA0_GFX_DOORBELL_OFFSET);

 doorbell = REG_SET_FIELD(doorbell, SDMA0_GFX_DOORBELL, ENABLE,
     ring->use_doorbell);
 doorbell_offset = REG_SET_FIELD(doorbell_offset,
     SDMA0_GFX_DOORBELL_OFFSET,
     OFFSET, ring->doorbell_index);
 WREG32_SDMA(i, mmSDMA0_GFX_DOORBELL, doorbell);
 WREG32_SDMA(i, mmSDMA0_GFX_DOORBELL_OFFSET, doorbell_offset);

 sdma_v4_0_ring_set_wptr(ring);


 WREG32_SDMA(i, mmSDMA0_GFX_MINOR_PTR_UPDATE, 0);


 wptr_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO,
      lower_32_bits(wptr_gpu_addr));
 WREG32_SDMA(i, mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI,
      upper_32_bits(wptr_gpu_addr));
 wptr_poll_cntl = RREG32_SDMA(i, mmSDMA0_GFX_RB_WPTR_POLL_CNTL);
 wptr_poll_cntl = REG_SET_FIELD(wptr_poll_cntl,
           SDMA0_GFX_RB_WPTR_POLL_CNTL,
           F32_POLL_ENABLE, amdgpu_sriov_vf(adev)? 1 : 0);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_WPTR_POLL_CNTL, wptr_poll_cntl);


 rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_ENABLE, 1);
 WREG32_SDMA(i, mmSDMA0_GFX_RB_CNTL, rb_cntl);

 ib_cntl = RREG32_SDMA(i, mmSDMA0_GFX_IB_CNTL);
 ib_cntl = REG_SET_FIELD(ib_cntl, SDMA0_GFX_IB_CNTL, IB_ENABLE, 1);




 WREG32_SDMA(i, mmSDMA0_GFX_IB_CNTL, ib_cntl);

 ring->sched.ready = 1;
}
