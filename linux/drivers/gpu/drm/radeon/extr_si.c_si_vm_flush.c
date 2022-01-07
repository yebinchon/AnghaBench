
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int HDP_MEM_COHERENCY_FLUSH_CNTL ;
 int PACKET3 (int ,int) ;
 int PACKET3_PFP_SYNC_ME ;
 int PACKET3_WAIT_REG_MEM ;
 int PACKET3_WRITE_DATA ;
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 unsigned int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ;
 int VM_INVALIDATE_REQUEST ;
 int WAIT_REG_MEM_ENGINE (int ) ;
 int WAIT_REG_MEM_FUNCTION (int ) ;
 int WRITE_DATA_DST_SEL (int ) ;
 int WRITE_DATA_ENGINE_SEL (int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void si_vm_flush(struct radeon_device *rdev, struct radeon_ring *ring,
   unsigned vm_id, uint64_t pd_addr)
{

 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(1) |
     WRITE_DATA_DST_SEL(0)));

 if (vm_id < 8) {
  radeon_ring_write(ring,
      (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2);
 } else {
  radeon_ring_write(ring,
      (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm_id - 8) << 2)) >> 2);
 }
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, pd_addr >> 12);


 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(1) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, HDP_MEM_COHERENCY_FLUSH_CNTL >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0x1);


 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(1) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 1 << vm_id);


 radeon_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 radeon_ring_write(ring, (WAIT_REG_MEM_FUNCTION(0) |
     WAIT_REG_MEM_ENGINE(0)));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0x20);


 radeon_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
 radeon_ring_write(ring, 0x0);
}
