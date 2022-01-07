
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int SDMA_OPCODE_SEMAPHORE ;
 int SDMA_PACKET (int ,int ,int ) ;
 int SDMA_SEMAPHORE_EXTRA_S ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

bool cik_sdma_semaphore_ring_emit(struct radeon_device *rdev,
      struct radeon_ring *ring,
      struct radeon_semaphore *semaphore,
      bool emit_wait)
{
 u64 addr = semaphore->gpu_addr;
 u32 extra_bits = emit_wait ? 0 : SDMA_SEMAPHORE_EXTRA_S;

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SEMAPHORE, 0, extra_bits));
 radeon_ring_write(ring, addr & 0xfffffff8);
 radeon_ring_write(ring, upper_32_bits(addr));

 return 1;
}
