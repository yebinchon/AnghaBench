
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct radeon_fence {scalar_t__ seq; } ;
struct radeon_device {int dummy; } ;


 int ENOENT ;
 int MAX_SCHEDULE_TIMEOUT ;
 int RADEON_NUM_RINGS ;
 long radeon_fence_wait_seq_timeout (struct radeon_device*,scalar_t__*,int,int ) ;

int radeon_fence_wait_any(struct radeon_device *rdev,
     struct radeon_fence **fences,
     bool intr)
{
 uint64_t seq[RADEON_NUM_RINGS];
 unsigned i, num_rings = 0;
 long r;

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  seq[i] = 0;

  if (!fences[i]) {
   continue;
  }

  seq[i] = fences[i]->seq;
  ++num_rings;
 }


 if (num_rings == 0)
  return -ENOENT;

 r = radeon_fence_wait_seq_timeout(rdev, seq, intr, MAX_SCHEDULE_TIMEOUT);
 if (r < 0) {
  return r;
 }
 return 0;
}
