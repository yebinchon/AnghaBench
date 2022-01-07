
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int PACKET0 (int ,int ) ;
 int UVD_SEMA_ADDR_HIGH ;
 int UVD_SEMA_ADDR_LOW ;
 int UVD_SEMA_CMD ;
 int radeon_ring_write (struct radeon_ring*,int) ;

bool uvd_v3_1_semaphore_emit(struct radeon_device *rdev,
        struct radeon_ring *ring,
        struct radeon_semaphore *semaphore,
        bool emit_wait)
{
 uint64_t addr = semaphore->gpu_addr;

 radeon_ring_write(ring, PACKET0(UVD_SEMA_ADDR_LOW, 0));
 radeon_ring_write(ring, (addr >> 3) & 0x000FFFFF);

 radeon_ring_write(ring, PACKET0(UVD_SEMA_ADDR_HIGH, 0));
 radeon_ring_write(ring, (addr >> 23) & 0x000FFFFF);

 radeon_ring_write(ring, PACKET0(UVD_SEMA_CMD, 0));
 radeon_ring_write(ring, 0x80 | (emit_wait ? 1 : 0));

 return 1;
}
