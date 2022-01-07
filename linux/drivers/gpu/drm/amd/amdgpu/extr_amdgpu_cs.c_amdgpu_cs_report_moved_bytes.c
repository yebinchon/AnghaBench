
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lock; int accum_us_vis; int accum_us; } ;
struct amdgpu_device {TYPE_1__ mm_stats; } ;


 scalar_t__ bytes_to_us (struct amdgpu_device*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void amdgpu_cs_report_moved_bytes(struct amdgpu_device *adev, u64 num_bytes,
      u64 num_vis_bytes)
{
 spin_lock(&adev->mm_stats.lock);
 adev->mm_stats.accum_us -= bytes_to_us(adev, num_bytes);
 adev->mm_stats.accum_us_vis -= bytes_to_us(adev, num_vis_bytes);
 spin_unlock(&adev->mm_stats.lock);
}
