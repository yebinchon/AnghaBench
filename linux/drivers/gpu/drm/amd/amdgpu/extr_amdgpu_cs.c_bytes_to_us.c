
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int log2_max_MBps; } ;
struct amdgpu_device {TYPE_1__ mm_stats; } ;
typedef int s64 ;



__attribute__((used)) static s64 bytes_to_us(struct amdgpu_device *adev, u64 bytes)
{
 if (!adev->mm_stats.log2_max_MBps)
  return 0;

 return bytes >> adev->mm_stats.log2_max_MBps;
}
