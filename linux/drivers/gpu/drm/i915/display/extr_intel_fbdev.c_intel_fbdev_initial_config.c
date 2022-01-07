
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_fbdev {TYPE_1__ helper; int preferred_bpp; } ;
typedef int async_cookie_t ;


 scalar_t__ drm_fb_helper_initial_config (TYPE_1__*,int ) ;
 int intel_fbdev_unregister (int ) ;
 int to_i915 (int ) ;

__attribute__((used)) static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
{
 struct intel_fbdev *ifbdev = data;


 if (drm_fb_helper_initial_config(&ifbdev->helper,
      ifbdev->preferred_bpp))
  intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
}
