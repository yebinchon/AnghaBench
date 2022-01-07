
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int DMA_PACKET (int ,int ,int ,int ,int ) ;
 int DMA_PACKET_FENCE ;
 int DMA_PACKET_TRAP ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void si_dma_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
          unsigned flags)
{

 bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;

 amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_FENCE, 0, 0, 0, 0));
 amdgpu_ring_write(ring, addr & 0xfffffffc);
 amdgpu_ring_write(ring, (upper_32_bits(addr) & 0xff));
 amdgpu_ring_write(ring, seq);

 if (write64bit) {
  addr += 4;
  amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_FENCE, 0, 0, 0, 0));
  amdgpu_ring_write(ring, addr & 0xfffffffc);
  amdgpu_ring_write(ring, (upper_32_bits(addr) & 0xff));
  amdgpu_ring_write(ring, upper_32_bits(seq));
 }

 amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_TRAP, 0, 0, 0, 0));
}
