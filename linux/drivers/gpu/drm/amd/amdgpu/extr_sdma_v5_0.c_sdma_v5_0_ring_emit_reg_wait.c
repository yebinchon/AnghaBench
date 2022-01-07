
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int SDMA_OP_POLL_REGMEM ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_POLL_REGMEM_DW5_INTERVAL (int) ;
 int SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT (int) ;
 int SDMA_PKT_POLL_REGMEM_HEADER_FUNC (int) ;
 int SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH (int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void sdma_v5_0_ring_emit_reg_wait(struct amdgpu_ring *ring, uint32_t reg,
      uint32_t val, uint32_t mask)
{
 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_POLL_REGMEM) |
     SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(0) |
     SDMA_PKT_POLL_REGMEM_HEADER_FUNC(3));
 amdgpu_ring_write(ring, reg << 2);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, val);
 amdgpu_ring_write(ring, mask);
 amdgpu_ring_write(ring, SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(0xfff) |
     SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(10));
}
