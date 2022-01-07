
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int log2_max_MBps; } ;
struct amdgpu_device {TYPE_1__ mm_stats; } ;
typedef int s64 ;



__attribute__((used)) static u64 us_to_bytes(struct amdgpu_device *adev, s64 us)
{
 if (us <= 0 || !adev->mm_stats.log2_max_MBps)
  return 0;




 return us << adev->mm_stats.log2_max_MBps;
}
