
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DMA_PACKET (int ,int ,int,int ) ;
 int DMA_PACKET_SEMAPHORE ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

bool r600_dma_semaphore_ring_emit(struct radeon_device *rdev,
      struct radeon_ring *ring,
      struct radeon_semaphore *semaphore,
      bool emit_wait)
{
 u64 addr = semaphore->gpu_addr;
 u32 s = emit_wait ? 0 : 1;

 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SEMAPHORE, 0, s, 0));
 radeon_ring_write(ring, addr & 0xfffffffc);
 radeon_ring_write(ring, upper_32_bits(addr) & 0xff);

 return 1;
}
