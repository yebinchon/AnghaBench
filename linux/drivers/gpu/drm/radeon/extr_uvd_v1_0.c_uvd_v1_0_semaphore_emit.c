
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_semaphore {int dummy; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;



bool uvd_v1_0_semaphore_emit(struct radeon_device *rdev,
        struct radeon_ring *ring,
        struct radeon_semaphore *semaphore,
        bool emit_wait)
{

 return 0;
}
