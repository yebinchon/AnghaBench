
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int wptr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int gpu_addr; int length_dw; } ;


 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 int DMA_IB_PACKET (int ,unsigned int,int ) ;
 int DMA_PACKET (int ,int ,int ,int ,int ) ;
 int DMA_PACKET_INDIRECT_BUFFER ;
 int DMA_PACKET_NOP ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void si_dma_ring_emit_ib(struct amdgpu_ring *ring,
    struct amdgpu_job *job,
    struct amdgpu_ib *ib,
    uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);



 while ((lower_32_bits(ring->wptr) & 7) != 5)
  amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_NOP, 0, 0, 0, 0));
 amdgpu_ring_write(ring, DMA_IB_PACKET(DMA_PACKET_INDIRECT_BUFFER, vmid, 0));
 amdgpu_ring_write(ring, (ib->gpu_addr & 0xFFFFFFE0));
 amdgpu_ring_write(ring, (ib->length_dw << 12) | (upper_32_bits(ib->gpu_addr) & 0xFF));

}
