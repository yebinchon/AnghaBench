
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rfbdev; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_3__ {int helper; } ;


 int drm_fb_helper_set_suspend_unlocked (int *,int) ;

void amdgpu_fbdev_set_suspend(struct amdgpu_device *adev, int state)
{
 if (adev->mode_info.rfbdev)
  drm_fb_helper_set_suspend_unlocked(&adev->mode_info.rfbdev->helper,
         state);
}
