
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DMA_PACKET (int ,int ,int ,int ) ;
 int DMA_PACKET_SRBM_WRITE ;
 int DMA_SRBM_READ_PACKET ;
 int HDP_MEM_COHERENCY_FLUSH_CNTL ;
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 int VM_INVALIDATE_REQUEST ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void cayman_dma_vm_flush(struct radeon_device *rdev, struct radeon_ring *ring,
    unsigned vm_id, uint64_t pd_addr)
{
 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
 radeon_ring_write(ring, (0xf << 16) | ((VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2));
 radeon_ring_write(ring, pd_addr >> 12);


 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
 radeon_ring_write(ring, (0xf << 16) | (HDP_MEM_COHERENCY_FLUSH_CNTL >> 2));
 radeon_ring_write(ring, 1);


 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
 radeon_ring_write(ring, (0xf << 16) | (VM_INVALIDATE_REQUEST >> 2));
 radeon_ring_write(ring, 1 << vm_id);


 radeon_ring_write(ring, DMA_SRBM_READ_PACKET);
 radeon_ring_write(ring, (0xff << 20) | (VM_INVALIDATE_REQUEST >> 2));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
}
