
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int last_activity; int last_rptr; } ;
struct radeon_device {int dummy; } ;


 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int ) ;
 int jiffies_64 ;
 int radeon_ring_get_rptr (struct radeon_device*,struct radeon_ring*) ;

void radeon_ring_lockup_update(struct radeon_device *rdev,
          struct radeon_ring *ring)
{
 atomic_set(&ring->last_rptr, radeon_ring_get_rptr(rdev, ring));
 atomic64_set(&ring->last_activity, jiffies_64);
}
