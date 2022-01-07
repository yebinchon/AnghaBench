
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handles; int * vcpu_bo; int idle_work; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int AMDGPU_MAX_VCE_HANDLES ;
 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;

int amdgpu_vce_suspend(struct amdgpu_device *adev)
{
 int i;

 cancel_delayed_work_sync(&adev->vce.idle_work);

 if (adev->vce.vcpu_bo == ((void*)0))
  return 0;

 for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i)
  if (atomic_read(&adev->vce.handles[i]))
   break;

 if (i == AMDGPU_MAX_VCE_HANDLES)
  return 0;


 return -EINVAL;
}
