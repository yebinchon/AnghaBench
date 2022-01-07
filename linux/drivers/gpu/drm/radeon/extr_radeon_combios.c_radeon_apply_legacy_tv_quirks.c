
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; int subsystem_vendor; int subsystem_device; } ;



__attribute__((used)) static bool radeon_apply_legacy_tv_quirks(struct drm_device *dev)
{

 if (dev->pdev->device == 0x5975 &&
     dev->pdev->subsystem_vendor == 0x1025 &&
     dev->pdev->subsystem_device == 0x009f)
  return 0;


 if (dev->pdev->device == 0x5974 &&
     dev->pdev->subsystem_vendor == 0x103c &&
     dev->pdev->subsystem_device == 0x280a)
  return 0;


 if (dev->pdev->device == 0x5955 &&
     dev->pdev->subsystem_vendor == 0x1462 &&
     dev->pdev->subsystem_device == 0x0131)
  return 0;

 return 1;
}
