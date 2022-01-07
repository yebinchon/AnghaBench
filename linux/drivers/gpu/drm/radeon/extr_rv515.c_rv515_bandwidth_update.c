
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_2__** crtcs; int mode_config_initialized; } ;
struct radeon_device {int disp_priority; scalar_t__ family; TYPE_3__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 scalar_t__ CHIP_RV515 ;
 int MC_DISP0R_INIT_LAT_MASK ;
 int MC_DISP0R_INIT_LAT_SHIFT ;
 int MC_DISP1R_INIT_LAT_MASK ;
 int MC_DISP1R_INIT_LAT_SHIFT ;
 int MC_MISC_LAT_TIMER ;
 int RREG32_MC (int ) ;
 int WREG32_MC (int ,int) ;
 int radeon_update_display_priority (struct radeon_device*) ;
 int rv515_bandwidth_avivo_update (struct radeon_device*) ;

void rv515_bandwidth_update(struct radeon_device *rdev)
{
 uint32_t tmp;
 struct drm_display_mode *mode0 = ((void*)0);
 struct drm_display_mode *mode1 = ((void*)0);

 if (!rdev->mode_info.mode_config_initialized)
  return;

 radeon_update_display_priority(rdev);

 if (rdev->mode_info.crtcs[0]->base.enabled)
  mode0 = &rdev->mode_info.crtcs[0]->base.mode;
 if (rdev->mode_info.crtcs[1]->base.enabled)
  mode1 = &rdev->mode_info.crtcs[1]->base.mode;





 if ((rdev->disp_priority == 2) &&
     (rdev->family == CHIP_RV515)) {
  tmp = RREG32_MC(MC_MISC_LAT_TIMER);
  tmp &= ~MC_DISP1R_INIT_LAT_MASK;
  tmp &= ~MC_DISP0R_INIT_LAT_MASK;
  if (mode1)
   tmp |= (1 << MC_DISP1R_INIT_LAT_SHIFT);
  if (mode0)
   tmp |= (1 << MC_DISP0R_INIT_LAT_SHIFT);
  WREG32_MC(MC_MISC_LAT_TIMER, tmp);
 }
 rv515_bandwidth_avivo_update(rdev);
}
