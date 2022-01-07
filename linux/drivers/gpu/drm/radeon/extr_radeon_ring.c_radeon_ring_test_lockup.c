
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct radeon_ring {int idx; int last_rptr; int last_activity; } ;
struct radeon_device {int dev; } ;


 scalar_t__ atomic64_read (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int ,char*,int ,scalar_t__) ;
 scalar_t__ jiffies_64 ;
 scalar_t__ jiffies_to_msecs (scalar_t__) ;
 scalar_t__ radeon_lockup_timeout ;
 scalar_t__ radeon_ring_get_rptr (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_lockup_update (struct radeon_device*,struct radeon_ring*) ;

bool radeon_ring_test_lockup(struct radeon_device *rdev, struct radeon_ring *ring)
{
 uint32_t rptr = radeon_ring_get_rptr(rdev, ring);
 uint64_t last = atomic64_read(&ring->last_activity);
 uint64_t elapsed;

 if (rptr != atomic_read(&ring->last_rptr)) {

  radeon_ring_lockup_update(rdev, ring);
  return 0;
 }

 elapsed = jiffies_to_msecs(jiffies_64 - last);
 if (radeon_lockup_timeout && elapsed >= radeon_lockup_timeout) {
  dev_err(rdev->dev, "ring %d stalled for more than %llumsec\n",
   ring->idx, elapsed);
  return 1;
 }

 return 0;
}
