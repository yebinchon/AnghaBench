
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int DMA_PACKET (int ,int ,int ,int ,int ) ;
 int DMA_PACKET_SRBM_WRITE ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void si_dma_ring_emit_wreg(struct amdgpu_ring *ring,
      uint32_t reg, uint32_t val)
{
 amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0, 0));
 amdgpu_ring_write(ring, (0xf << 16) | reg);
 amdgpu_ring_write(ring, val);
}
