
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {int dummy; } ;


 int SDMA_OP_POLL_REGMEM ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_POLL_REGMEM_DW5_INTERVAL (int) ;
 int SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT (int) ;
 int SDMA_PKT_POLL_REGMEM_HEADER_FUNC (int ) ;
 int SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH (int ) ;
 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmVM_INVALIDATE_REQUEST ;

__attribute__((used)) static void sdma_v2_4_ring_emit_vm_flush(struct amdgpu_ring *ring,
      unsigned vmid, uint64_t pd_addr)
{
 amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);


 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_POLL_REGMEM) |
     SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(0) |
     SDMA_PKT_POLL_REGMEM_HEADER_FUNC(0));
 amdgpu_ring_write(ring, mmVM_INVALIDATE_REQUEST << 2);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(0xfff) |
     SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(10));
}
