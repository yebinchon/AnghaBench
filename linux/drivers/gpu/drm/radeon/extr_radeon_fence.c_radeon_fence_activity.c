
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int* sync_seq; int last_seq; } ;


 int atomic64_read (int *) ;
 int atomic64_xchg (int *,int) ;
 int radeon_fence_read (struct radeon_device*,int) ;
 int radeon_fence_schedule_check (struct radeon_device*,int) ;

__attribute__((used)) static bool radeon_fence_activity(struct radeon_device *rdev, int ring)
{
 uint64_t seq, last_seq, last_emitted;
 unsigned count_loop = 0;
 bool wake = 0;
 last_seq = atomic64_read(&rdev->fence_drv[ring].last_seq);
 do {
  last_emitted = rdev->fence_drv[ring].sync_seq[ring];
  seq = radeon_fence_read(rdev, ring);
  seq |= last_seq & 0xffffffff00000000LL;
  if (seq < last_seq) {
   seq &= 0xffffffff;
   seq |= last_emitted & 0xffffffff00000000LL;
  }

  if (seq <= last_seq || seq > last_emitted) {
   break;
  }




  wake = 1;
  last_seq = seq;
  if ((count_loop++) > 10) {





   break;
  }
 } while (atomic64_xchg(&rdev->fence_drv[ring].last_seq, seq) > seq);

 if (seq < last_emitted)
  radeon_fence_schedule_check(rdev, ring);

 return wake;
}
