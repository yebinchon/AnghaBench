
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct amdgpu_device {TYPE_1__ kfd; } ;


 int kgd2kfd_suspend (scalar_t__) ;

void amdgpu_amdkfd_suspend(struct amdgpu_device *adev)
{
 if (adev->kfd.dev)
  kgd2kfd_suspend(adev->kfd.dev);
}
