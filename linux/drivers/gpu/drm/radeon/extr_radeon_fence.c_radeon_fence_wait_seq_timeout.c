
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct radeon_device {int ddev; scalar_t__ needs_reset; int fence_queue; } ;


 long EDEADLK ;
 int RADEON_NUM_RINGS ;
 scalar_t__ radeon_fence_any_seq_signaled (struct radeon_device*,int *) ;
 int radeon_irq_kms_sw_irq_get (struct radeon_device*,int) ;
 int radeon_irq_kms_sw_irq_put (struct radeon_device*,int) ;
 int trace_radeon_fence_wait_begin (int ,int,int ) ;
 int trace_radeon_fence_wait_end (int ,int,int ) ;
 long wait_event_interruptible_timeout (int ,int,long) ;
 long wait_event_timeout (int ,int,long) ;

__attribute__((used)) static long radeon_fence_wait_seq_timeout(struct radeon_device *rdev,
       u64 *target_seq, bool intr,
       long timeout)
{
 long r;
 int i;

 if (radeon_fence_any_seq_signaled(rdev, target_seq))
  return timeout;


 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  if (!target_seq[i])
   continue;

  trace_radeon_fence_wait_begin(rdev->ddev, i, target_seq[i]);
  radeon_irq_kms_sw_irq_get(rdev, i);
 }

 if (intr) {
  r = wait_event_interruptible_timeout(rdev->fence_queue, (
   radeon_fence_any_seq_signaled(rdev, target_seq)
    || rdev->needs_reset), timeout);
 } else {
  r = wait_event_timeout(rdev->fence_queue, (
   radeon_fence_any_seq_signaled(rdev, target_seq)
    || rdev->needs_reset), timeout);
 }

 if (rdev->needs_reset)
  r = -EDEADLK;

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  if (!target_seq[i])
   continue;

  radeon_irq_kms_sw_irq_put(rdev, i);
  trace_radeon_fence_wait_end(rdev->ddev, i, target_seq[i]);
 }

 return r;
}
