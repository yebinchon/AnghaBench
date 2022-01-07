
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_px_quirk {scalar_t__ chip_device; scalar_t__ chip_vendor; scalar_t__ subsys_vendor; scalar_t__ subsys_device; int px_quirk_flags; } ;
struct radeon_device {int px_quirk_flags; int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;


 int RADEON_IS_PX ;
 int RADEON_PX_QUIRK_DISABLE_PX ;
 int radeon_has_atpx_dgpu_power_cntl () ;
 int radeon_is_atpx_hybrid () ;
 struct radeon_px_quirk* radeon_px_quirk_list ;

__attribute__((used)) static void radeon_device_handle_px_quirks(struct radeon_device *rdev)
{
 struct radeon_px_quirk *p = radeon_px_quirk_list;


 while (p && p->chip_device != 0) {
  if (rdev->pdev->vendor == p->chip_vendor &&
      rdev->pdev->device == p->chip_device &&
      rdev->pdev->subsystem_vendor == p->subsys_vendor &&
      rdev->pdev->subsystem_device == p->subsys_device) {
   rdev->px_quirk_flags = p->px_quirk_flags;
   break;
  }
  ++p;
 }

 if (rdev->px_quirk_flags & RADEON_PX_QUIRK_DISABLE_PX)
  rdev->flags &= ~RADEON_IS_PX;


 if (!radeon_is_atpx_hybrid() &&
     !radeon_has_atpx_dgpu_power_cntl())
  rdev->flags &= ~RADEON_IS_PX;
}
