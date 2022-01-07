
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_ring {scalar_t__ me; } ;


 int GPU_HDP_FLUSH_DONE ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int SDMA0 ;
 int SDMA1 ;
 int SDMA_OP_POLL_REGMEM ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_POLL_REGMEM_DW5_INTERVAL (int) ;
 int SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT (int) ;
 int SDMA_PKT_POLL_REGMEM_HEADER_FUNC (int) ;
 int SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmGPU_HDP_FLUSH_DONE ;
 int mmGPU_HDP_FLUSH_REQ ;

__attribute__((used)) static void sdma_v2_4_ring_emit_hdp_flush(struct amdgpu_ring *ring)
{
 u32 ref_and_mask = 0;

 if (ring->me == 0)
  ref_and_mask = REG_SET_FIELD(ref_and_mask, GPU_HDP_FLUSH_DONE, SDMA0, 1);
 else
  ref_and_mask = REG_SET_FIELD(ref_and_mask, GPU_HDP_FLUSH_DONE, SDMA1, 1);

 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_POLL_REGMEM) |
     SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(1) |
     SDMA_PKT_POLL_REGMEM_HEADER_FUNC(3));
 amdgpu_ring_write(ring, mmGPU_HDP_FLUSH_DONE << 2);
 amdgpu_ring_write(ring, mmGPU_HDP_FLUSH_REQ << 2);
 amdgpu_ring_write(ring, ref_and_mask);
 amdgpu_ring_write(ring, ref_and_mask);
 amdgpu_ring_write(ring, SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(0xfff) |
     SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(10));
}
