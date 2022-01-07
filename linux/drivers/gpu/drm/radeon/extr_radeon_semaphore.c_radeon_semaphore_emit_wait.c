
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_semaphore {int gpu_addr; int waiters; } ;
struct radeon_ring {int last_semaphore_wait_addr; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 scalar_t__ radeon_semaphore_ring_emit (struct radeon_device*,int,struct radeon_ring*,struct radeon_semaphore*,int) ;
 int trace_radeon_semaphore_wait (int,struct radeon_semaphore*) ;

bool radeon_semaphore_emit_wait(struct radeon_device *rdev, int ridx,
    struct radeon_semaphore *semaphore)
{
 struct radeon_ring *ring = &rdev->ring[ridx];

 trace_radeon_semaphore_wait(ridx, semaphore);

 if (radeon_semaphore_ring_emit(rdev, ridx, ring, semaphore, 1)) {
  ++semaphore->waiters;


  ring->last_semaphore_wait_addr = semaphore->gpu_addr;
  return 1;
 }
 return 0;
}
