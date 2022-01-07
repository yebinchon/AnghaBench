
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_PFP_SYNC_ME ;
 int PACKET3_WAIT_REG_MEM ;
 int PACKET3_WRITE_DATA ;
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ;
 int SH_MEM_BASES ;
 int SH_MEM_CONFIG_GFX_DEFAULT ;
 int SRBM_GFX_CNTL ;
 int VMID (unsigned int) ;
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 unsigned int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ;
 int VM_INVALIDATE_REQUEST ;
 int WAIT_REG_MEM_ENGINE (int ) ;
 int WAIT_REG_MEM_FUNCTION (int ) ;
 int WAIT_REG_MEM_OPERATION (int ) ;
 int WRITE_DATA_DST_SEL (int ) ;
 int WRITE_DATA_ENGINE_SEL (int) ;
 int cik_hdp_flush_cp_ring_emit (struct radeon_device*,scalar_t__) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void cik_vm_flush(struct radeon_device *rdev, struct radeon_ring *ring,
    unsigned vm_id, uint64_t pd_addr)
{
 int usepfp = (ring->idx == RADEON_RING_TYPE_GFX_INDEX);

 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(usepfp) |
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
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(usepfp) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, SRBM_GFX_CNTL >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, VMID(vm_id));

 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 6));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(usepfp) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, SH_MEM_BASES >> 2);
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, SH_MEM_CONFIG_GFX_DEFAULT);
 radeon_ring_write(ring, 1);
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(usepfp) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, SRBM_GFX_CNTL >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, VMID(0));


 cik_hdp_flush_cp_ring_emit(rdev, ring->idx);


 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(usepfp) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 1 << vm_id);


 radeon_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 radeon_ring_write(ring, (WAIT_REG_MEM_OPERATION(0) |
     WAIT_REG_MEM_FUNCTION(0) |
     WAIT_REG_MEM_ENGINE(0)));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0x20);


 if (usepfp) {

  radeon_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
  radeon_ring_write(ring, 0x0);
 }
}
