
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int VCE_CMD_END ;
 int VCE_CMD_SEMAPHORE ;
 int cpu_to_le32 (int) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;

bool radeon_vce_semaphore_emit(struct radeon_device *rdev,
          struct radeon_ring *ring,
          struct radeon_semaphore *semaphore,
          bool emit_wait)
{
 uint64_t addr = semaphore->gpu_addr;

 radeon_ring_write(ring, cpu_to_le32(VCE_CMD_SEMAPHORE));
 radeon_ring_write(ring, cpu_to_le32((addr >> 3) & 0x000FFFFF));
 radeon_ring_write(ring, cpu_to_le32((addr >> 23) & 0x000FFFFF));
 radeon_ring_write(ring, cpu_to_le32(0x01003000 | (emit_wait ? 1 : 0)));
 if (!emit_wait)
  radeon_ring_write(ring, cpu_to_le32(VCE_CMD_END));

 return 1;
}
