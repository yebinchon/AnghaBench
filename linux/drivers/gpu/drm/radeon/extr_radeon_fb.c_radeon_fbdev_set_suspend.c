
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rfbdev; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct TYPE_3__ {int helper; } ;


 int drm_fb_helper_set_suspend (int *,int) ;

void radeon_fbdev_set_suspend(struct radeon_device *rdev, int state)
{
 if (rdev->mode_info.rfbdev)
  drm_fb_helper_set_suspend(&rdev->mode_info.rfbdev->helper, state);
}
