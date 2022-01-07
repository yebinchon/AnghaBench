
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct radeon_ring {int idx; } ;
struct radeon_device {int dummy; } ;


 int SDMA_OPCODE_POLL_REG_MEM ;
 int SDMA_OPCODE_SRBM_WRITE ;
 int SDMA_PACKET (int ,int ,int) ;
 int SDMA_POLL_REG_MEM_EXTRA_FUNC (int ) ;
 int SDMA_POLL_REG_MEM_EXTRA_OP (int ) ;
 int SH_MEM_APE1_BASE ;
 int SH_MEM_APE1_LIMIT ;
 int SH_MEM_BASES ;
 int SH_MEM_CONFIG ;
 int SRBM_GFX_CNTL ;
 int VMID (unsigned int) ;
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 unsigned int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ;
 int VM_INVALIDATE_REQUEST ;
 int cik_sdma_hdp_flush_ring_emit (struct radeon_device*,int ) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void cik_dma_vm_flush(struct radeon_device *rdev, struct radeon_ring *ring,
        unsigned vm_id, uint64_t pd_addr)
{
 u32 extra_bits = (SDMA_POLL_REG_MEM_EXTRA_OP(0) |
     SDMA_POLL_REG_MEM_EXTRA_FUNC(0));

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 if (vm_id < 8) {
  radeon_ring_write(ring, (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2);
 } else {
  radeon_ring_write(ring, (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm_id - 8) << 2)) >> 2);
 }
 radeon_ring_write(ring, pd_addr >> 12);


 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, SRBM_GFX_CNTL >> 2);
 radeon_ring_write(ring, VMID(vm_id));

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, SH_MEM_BASES >> 2);
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, SH_MEM_CONFIG >> 2);
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, SH_MEM_APE1_BASE >> 2);
 radeon_ring_write(ring, 1);

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, SH_MEM_APE1_LIMIT >> 2);
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, SRBM_GFX_CNTL >> 2);
 radeon_ring_write(ring, VMID(0));


 cik_sdma_hdp_flush_ring_emit(rdev, ring->idx);


 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 1 << vm_id);

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_POLL_REG_MEM, 0, extra_bits));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, (0xfff << 16) | 10);
}
