
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int GPU_HDP_FLUSH_DONE ;
 int GPU_HDP_FLUSH_REQ ;
 int R600_RING_TYPE_DMA_INDEX ;
 int SDMA0 ;
 int SDMA1 ;
 int SDMA_OPCODE_POLL_REG_MEM ;
 int SDMA_PACKET (int ,int ,int) ;
 int SDMA_POLL_REG_MEM_EXTRA_FUNC (int) ;
 int SDMA_POLL_REG_MEM_EXTRA_OP (int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static void cik_sdma_hdp_flush_ring_emit(struct radeon_device *rdev,
      int ridx)
{
 struct radeon_ring *ring = &rdev->ring[ridx];
 u32 extra_bits = (SDMA_POLL_REG_MEM_EXTRA_OP(1) |
     SDMA_POLL_REG_MEM_EXTRA_FUNC(3));
 u32 ref_and_mask;

 if (ridx == R600_RING_TYPE_DMA_INDEX)
  ref_and_mask = SDMA0;
 else
  ref_and_mask = SDMA1;

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_POLL_REG_MEM, 0, extra_bits));
 radeon_ring_write(ring, GPU_HDP_FLUSH_DONE);
 radeon_ring_write(ring, GPU_HDP_FLUSH_REQ);
 radeon_ring_write(ring, ref_and_mask);
 radeon_ring_write(ring, ref_and_mask);
 radeon_ring_write(ring, (0xfff << 16) | 10);
}
