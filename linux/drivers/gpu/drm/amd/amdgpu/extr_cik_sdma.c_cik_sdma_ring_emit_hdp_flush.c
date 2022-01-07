
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_ring {scalar_t__ me; } ;


 int GPU_HDP_FLUSH_DONE__SDMA0_MASK ;
 int GPU_HDP_FLUSH_DONE__SDMA1_MASK ;
 int SDMA_OPCODE_POLL_REG_MEM ;
 int SDMA_PACKET (int ,int ,int) ;
 int SDMA_POLL_REG_MEM_EXTRA_FUNC (int) ;
 int SDMA_POLL_REG_MEM_EXTRA_OP (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmGPU_HDP_FLUSH_DONE ;
 int mmGPU_HDP_FLUSH_REQ ;

__attribute__((used)) static void cik_sdma_ring_emit_hdp_flush(struct amdgpu_ring *ring)
{
 u32 extra_bits = (SDMA_POLL_REG_MEM_EXTRA_OP(1) |
     SDMA_POLL_REG_MEM_EXTRA_FUNC(3));
 u32 ref_and_mask;

 if (ring->me == 0)
  ref_and_mask = GPU_HDP_FLUSH_DONE__SDMA0_MASK;
 else
  ref_and_mask = GPU_HDP_FLUSH_DONE__SDMA1_MASK;

 amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_POLL_REG_MEM, 0, extra_bits));
 amdgpu_ring_write(ring, mmGPU_HDP_FLUSH_DONE << 2);
 amdgpu_ring_write(ring, mmGPU_HDP_FLUSH_REQ << 2);
 amdgpu_ring_write(ring, ref_and_mask);
 amdgpu_ring_write(ring, ref_and_mask);
 amdgpu_ring_write(ring, (0xfff << 16) | 10);
}
