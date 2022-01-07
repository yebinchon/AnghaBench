
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int* sync_seq; int last_seq; } ;


 int atomic64_read (int *) ;
 int radeon_fence_process (struct radeon_device*,int) ;

unsigned radeon_fence_count_emitted(struct radeon_device *rdev, int ring)
{
 uint64_t emitted;




 radeon_fence_process(rdev, ring);
 emitted = rdev->fence_drv[ring].sync_seq[ring]
  - atomic64_read(&rdev->fence_drv[ring].last_seq);

 if (emitted > 0x10000000) {
  emitted = 0x10000000;
 }
 return (unsigned)emitted;
}
