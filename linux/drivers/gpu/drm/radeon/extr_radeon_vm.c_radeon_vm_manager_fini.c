
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int * active; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 int RADEON_NUM_VM ;
 int radeon_asic_vm_fini (struct radeon_device*) ;
 int radeon_fence_unref (int *) ;

void radeon_vm_manager_fini(struct radeon_device *rdev)
{
 int i;

 if (!rdev->vm_manager.enabled)
  return;

 for (i = 0; i < RADEON_NUM_VM; ++i)
  radeon_fence_unref(&rdev->vm_manager.active[i]);
 radeon_asic_vm_fini(rdev);
 rdev->vm_manager.enabled = 0;
}
