
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handles; int * vcpu_bo; } ;
struct radeon_device {TYPE_1__ vce; } ;


 int EINVAL ;
 int RADEON_MAX_VCE_HANDLES ;
 scalar_t__ atomic_read (int *) ;

int radeon_vce_suspend(struct radeon_device *rdev)
{
 int i;

 if (rdev->vce.vcpu_bo == ((void*)0))
  return 0;

 for (i = 0; i < RADEON_MAX_VCE_HANDLES; ++i)
  if (atomic_read(&rdev->vce.handles[i]))
   break;

 if (i == RADEON_MAX_VCE_HANDLES)
  return 0;


 return -EINVAL;
}
