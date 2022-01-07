
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_13__ {int ready; } ;
struct amdgpu_ring {int rptr_offs; int ring_size; int gpu_addr; int doorbell_index; int wptr_offs; TYPE_6__ sched; scalar_t__ use_pollmem; scalar_t__ use_doorbell; scalar_t__ wptr; } ;
struct TYPE_8__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_14__ {int num_instances; TYPE_2__* instance; } ;
struct TYPE_12__ {scalar_t__ gpu_addr; } ;
struct TYPE_10__ {int gb_addr_config; } ;
struct TYPE_11__ {TYPE_3__ config; } ;
struct amdgpu_device {TYPE_1__ mman; TYPE_7__ sdma; TYPE_5__ wb; TYPE_4__ gfx; int srbm_mutex; } ;
struct TYPE_9__ {struct amdgpu_ring ring; } ;


 int ENABLE ;
 int IB_ENABLE ;
 int IB_SWAP_ENABLE ;
 int OFFSET ;
 int RB_ENABLE ;
 int RB_SIZE ;
 int RB_SWAP_ENABLE ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RPTR_WRITEBACK_ENABLE ;
 int RPTR_WRITEBACK_SWAP_ENABLE ;
 int RREG32 (scalar_t__) ;
 int SDMA0_GFX_DOORBELL ;
 int SDMA0_GFX_IB_CNTL ;
 int SDMA0_GFX_RB_CNTL ;
 int SDMA0_GFX_RB_WPTR_POLL_CNTL ;
 int WREG32 (scalar_t__,int) ;
 int amdgpu_ring_clear_ring (struct amdgpu_ring*) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int amdgpu_ttm_set_buffer_funcs_status (struct amdgpu_device*,int) ;
 int lower_32_bits (scalar_t__) ;
 scalar_t__ mmSDMA0_GFX_APE1_CNTL ;
 scalar_t__ mmSDMA0_GFX_DOORBELL ;
 scalar_t__ mmSDMA0_GFX_IB_CNTL ;
 scalar_t__ mmSDMA0_GFX_IB_OFFSET ;
 scalar_t__ mmSDMA0_GFX_IB_RPTR ;
 scalar_t__ mmSDMA0_GFX_RB_BASE ;
 scalar_t__ mmSDMA0_GFX_RB_BASE_HI ;
 scalar_t__ mmSDMA0_GFX_RB_CNTL ;
 scalar_t__ mmSDMA0_GFX_RB_RPTR ;
 scalar_t__ mmSDMA0_GFX_RB_RPTR_ADDR_HI ;
 scalar_t__ mmSDMA0_GFX_RB_RPTR_ADDR_LO ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO ;
 scalar_t__ mmSDMA0_GFX_RB_WPTR_POLL_CNTL ;
 scalar_t__ mmSDMA0_GFX_VIRTUAL_ADDR ;
 scalar_t__ mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL ;
 scalar_t__ mmSDMA0_TILING_CONFIG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int order_base_2 (int) ;
 scalar_t__* sdma_offsets ;
 int sdma_v3_0_ctx_switch_enable (struct amdgpu_device*,int) ;
 int sdma_v3_0_enable (struct amdgpu_device*,int) ;
 int sdma_v3_0_ring_set_wptr (struct amdgpu_ring*) ;
 int upper_32_bits (scalar_t__) ;
 int vi_srbm_select (struct amdgpu_device*,int ,int ,int ,int) ;

__attribute__((used)) static int sdma_v3_0_gfx_resume(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 u32 rb_cntl, ib_cntl, wptr_poll_cntl;
 u32 rb_bufsz;
 u32 wb_offset;
 u32 doorbell;
 u64 wptr_gpu_addr;
 int i, j, r;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;
  amdgpu_ring_clear_ring(ring);
  wb_offset = (ring->rptr_offs * 4);

  mutex_lock(&adev->srbm_mutex);
  for (j = 0; j < 16; j++) {
   vi_srbm_select(adev, 0, 0, 0, j);

   WREG32(mmSDMA0_GFX_VIRTUAL_ADDR + sdma_offsets[i], 0);
   WREG32(mmSDMA0_GFX_APE1_CNTL + sdma_offsets[i], 0);
  }
  vi_srbm_select(adev, 0, 0, 0, 0);
  mutex_unlock(&adev->srbm_mutex);

  WREG32(mmSDMA0_TILING_CONFIG + sdma_offsets[i],
         adev->gfx.config.gb_addr_config & 0x70);

  WREG32(mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL + sdma_offsets[i], 0);


  rb_bufsz = order_base_2(ring->ring_size / 4);
  rb_cntl = RREG32(mmSDMA0_GFX_RB_CNTL + sdma_offsets[i]);
  rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_SIZE, rb_bufsz);





  WREG32(mmSDMA0_GFX_RB_CNTL + sdma_offsets[i], rb_cntl);


  ring->wptr = 0;
  WREG32(mmSDMA0_GFX_RB_RPTR + sdma_offsets[i], 0);
  sdma_v3_0_ring_set_wptr(ring);
  WREG32(mmSDMA0_GFX_IB_RPTR + sdma_offsets[i], 0);
  WREG32(mmSDMA0_GFX_IB_OFFSET + sdma_offsets[i], 0);


  WREG32(mmSDMA0_GFX_RB_RPTR_ADDR_HI + sdma_offsets[i],
         upper_32_bits(adev->wb.gpu_addr + wb_offset) & 0xFFFFFFFF);
  WREG32(mmSDMA0_GFX_RB_RPTR_ADDR_LO + sdma_offsets[i],
         lower_32_bits(adev->wb.gpu_addr + wb_offset) & 0xFFFFFFFC);

  rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RPTR_WRITEBACK_ENABLE, 1);

  WREG32(mmSDMA0_GFX_RB_BASE + sdma_offsets[i], ring->gpu_addr >> 8);
  WREG32(mmSDMA0_GFX_RB_BASE_HI + sdma_offsets[i], ring->gpu_addr >> 40);

  doorbell = RREG32(mmSDMA0_GFX_DOORBELL + sdma_offsets[i]);

  if (ring->use_doorbell) {
   doorbell = REG_SET_FIELD(doorbell, SDMA0_GFX_DOORBELL,
       OFFSET, ring->doorbell_index);
   doorbell = REG_SET_FIELD(doorbell, SDMA0_GFX_DOORBELL, ENABLE, 1);
  } else {
   doorbell = REG_SET_FIELD(doorbell, SDMA0_GFX_DOORBELL, ENABLE, 0);
  }
  WREG32(mmSDMA0_GFX_DOORBELL + sdma_offsets[i], doorbell);


  wptr_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);

  WREG32(mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO + sdma_offsets[i],
         lower_32_bits(wptr_gpu_addr));
  WREG32(mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI + sdma_offsets[i],
         upper_32_bits(wptr_gpu_addr));
  wptr_poll_cntl = RREG32(mmSDMA0_GFX_RB_WPTR_POLL_CNTL + sdma_offsets[i]);
  if (ring->use_pollmem) {

   WREG32(mmSDMA0_GFX_RB_WPTR + sdma_offsets[i], 0);
   wptr_poll_cntl = REG_SET_FIELD(wptr_poll_cntl,
             SDMA0_GFX_RB_WPTR_POLL_CNTL,
             ENABLE, 1);
  } else {
   wptr_poll_cntl = REG_SET_FIELD(wptr_poll_cntl,
             SDMA0_GFX_RB_WPTR_POLL_CNTL,
             ENABLE, 0);
  }
  WREG32(mmSDMA0_GFX_RB_WPTR_POLL_CNTL + sdma_offsets[i], wptr_poll_cntl);


  rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_ENABLE, 1);
  WREG32(mmSDMA0_GFX_RB_CNTL + sdma_offsets[i], rb_cntl);

  ib_cntl = RREG32(mmSDMA0_GFX_IB_CNTL + sdma_offsets[i]);
  ib_cntl = REG_SET_FIELD(ib_cntl, SDMA0_GFX_IB_CNTL, IB_ENABLE, 1);




  WREG32(mmSDMA0_GFX_IB_CNTL + sdma_offsets[i], ib_cntl);

  ring->sched.ready = 1;
 }


 sdma_v3_0_enable(adev, 1);

 sdma_v3_0_ctx_switch_enable(adev, 1);

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;
  r = amdgpu_ring_test_helper(ring);
  if (r)
   return r;

  if (adev->mman.buffer_funcs_ring == ring)
   amdgpu_ttm_set_buffer_funcs_status(adev, 1);
 }

 return 0;
}
