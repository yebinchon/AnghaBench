
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {int dummy; } ;


 int DMA_PACKET (int ,int ,int ,int ,int ) ;
 int DMA_PACKET_POLL_REG_MEM ;
 int VM_INVALIDATE_REQUEST ;
 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void si_dma_ring_emit_vm_flush(struct amdgpu_ring *ring,
          unsigned vmid, uint64_t pd_addr)
{
 amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);


 amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_POLL_REG_MEM, 0, 0, 0, 0));
 amdgpu_ring_write(ring, VM_INVALIDATE_REQUEST);
 amdgpu_ring_write(ring, 0xff << 16);
 amdgpu_ring_write(ring, 1 << vmid);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, (0 << 28) | 0x20);
}
