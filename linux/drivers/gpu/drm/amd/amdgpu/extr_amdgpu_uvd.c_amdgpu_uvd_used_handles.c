
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {unsigned int max_handles; int * handles; } ;
struct amdgpu_device {TYPE_1__ uvd; } ;


 scalar_t__ atomic_read (int *) ;

uint32_t amdgpu_uvd_used_handles(struct amdgpu_device *adev)
{
 unsigned i;
 uint32_t used_handles = 0;

 for (i = 0; i < adev->uvd.max_handles; ++i) {





  if (atomic_read(&adev->uvd.handles[i]))
   used_handles++;
 }

 return used_handles;
}
