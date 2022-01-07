
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {scalar_t__ family; int flags; TYPE_1__* pdev; int dev; } ;
struct TYPE_2__ {int no_64bit_msi; int device; int subsystem_vendor; int subsystem_device; } ;


 scalar_t__ CHIP_BONAIRE ;
 scalar_t__ CHIP_PALM ;
 scalar_t__ CHIP_RS690 ;
 scalar_t__ CHIP_RV380 ;
 scalar_t__ CHIP_RV515 ;
 int RADEON_IS_AGP ;
 int RADEON_IS_IGP ;
 int dev_info (int ,char*) ;
 int radeon_msi ;

__attribute__((used)) static bool radeon_msi_ok(struct radeon_device *rdev)
{

 if (rdev->family < CHIP_RV380)
  return 0;


 if (rdev->flags & RADEON_IS_AGP)
  return 0;






 if (rdev->family < CHIP_BONAIRE) {
  dev_info(rdev->dev, "radeon: MSI limited to 32-bit\n");
  rdev->pdev->no_64bit_msi = 1;
 }


 if (radeon_msi == 1)
  return 1;
 else if (radeon_msi == 0)
  return 0;



 if ((rdev->pdev->device == 0x791f) &&
     (rdev->pdev->subsystem_vendor == 0x103c) &&
     (rdev->pdev->subsystem_device == 0x30c2))
  return 1;


 if ((rdev->pdev->device == 0x791f) &&
     (rdev->pdev->subsystem_vendor == 0x1028) &&
     (rdev->pdev->subsystem_device == 0x01fc))
  return 1;


 if ((rdev->pdev->device == 0x791f) &&
     (rdev->pdev->subsystem_vendor == 0x1028) &&
     (rdev->pdev->subsystem_device == 0x01fd))
  return 1;


 if ((rdev->pdev->device == 0x791f) &&
     (rdev->pdev->subsystem_vendor == 0x107b) &&
     (rdev->pdev->subsystem_device == 0x0185))
  return 1;


 if (rdev->family == CHIP_RS690)
  return 1;





 if (rdev->family == CHIP_RV515)
  return 0;
 if (rdev->flags & RADEON_IS_IGP) {

  if (rdev->family >= CHIP_PALM)
   return 1;

  return 0;
 }

 return 1;
}
