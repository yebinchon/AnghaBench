
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct amdgpu_device {TYPE_1__ kfd; } ;


 int kgd2kfd_post_reset (scalar_t__) ;

int amdgpu_amdkfd_post_reset(struct amdgpu_device *adev)
{
 int r = 0;

 if (adev->kfd.dev)
  r = kgd2kfd_post_reset(adev->kfd.dev);

 return r;
}
