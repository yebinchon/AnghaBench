
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int sync_seq; int gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int DMA_PACKET (int ,int ,int ,int ,int ) ;
 int DMA_PACKET_POLL_REG_MEM ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void si_dma_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;


 amdgpu_ring_write(ring, DMA_PACKET(DMA_PACKET_POLL_REG_MEM, 0, 0, 0, 0) |
     (1 << 27));
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, (0xff << 16) | upper_32_bits(addr));
 amdgpu_ring_write(ring, 0xffffffff);
 amdgpu_ring_write(ring, seq);
 amdgpu_ring_write(ring, (3 << 28) | 0x20);
}
