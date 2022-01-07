
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_MEM_SEMAPHORE ;
 int PACKET3_PFP_SYNC_ME ;
 unsigned int PACKET3_SEM_SEL_SIGNAL ;
 unsigned int PACKET3_SEM_SEL_WAIT ;
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ;
 int lower_32_bits (int ) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int ) ;

bool cik_semaphore_ring_emit(struct radeon_device *rdev,
        struct radeon_ring *ring,
        struct radeon_semaphore *semaphore,
        bool emit_wait)
{
 uint64_t addr = semaphore->gpu_addr;
 unsigned sel = emit_wait ? PACKET3_SEM_SEL_WAIT : PACKET3_SEM_SEL_SIGNAL;

 radeon_ring_write(ring, PACKET3(PACKET3_MEM_SEMAPHORE, 1));
 radeon_ring_write(ring, lower_32_bits(addr));
 radeon_ring_write(ring, (upper_32_bits(addr) & 0xffff) | sel);

 if (emit_wait && ring->idx == RADEON_RING_TYPE_GFX_INDEX) {

  radeon_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
  radeon_ring_write(ring, 0x0);
 }

 return 1;
}
