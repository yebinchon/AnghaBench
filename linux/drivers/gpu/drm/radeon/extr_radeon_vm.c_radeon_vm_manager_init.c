
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 int radeon_asic_vm_init (struct radeon_device*) ;

int radeon_vm_manager_init(struct radeon_device *rdev)
{
 int r;

 if (!rdev->vm_manager.enabled) {
  r = radeon_asic_vm_init(rdev);
  if (r)
   return r;

  rdev->vm_manager.enabled = 1;
 }
 return 0;
}
