
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vcpu_bo; } ;
struct radeon_device {int vce_fw; TYPE_1__ vce; } ;


 int radeon_bo_unref (int **) ;
 int release_firmware (int ) ;

void radeon_vce_fini(struct radeon_device *rdev)
{
 if (rdev->vce.vcpu_bo == ((void*)0))
  return;

 radeon_bo_unref(&rdev->vce.vcpu_bo);

 release_firmware(rdev->vce_fw);
}
