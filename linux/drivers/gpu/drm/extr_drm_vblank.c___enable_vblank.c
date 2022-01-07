
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* driver; } ;
struct drm_crtc {TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* enable_vblank ) (struct drm_device*,unsigned int) ;} ;
struct TYPE_3__ {int (* enable_vblank ) (struct drm_crtc*) ;} ;


 int DRIVER_MODESET ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_crtc* drm_crtc_from_index (struct drm_device*,unsigned int) ;
 int stub1 (struct drm_crtc*) ;
 int stub2 (struct drm_device*,unsigned int) ;

__attribute__((used)) static int __enable_vblank(struct drm_device *dev, unsigned int pipe)
{
 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);

  if (WARN_ON(!crtc))
   return 0;

  if (crtc->funcs->enable_vblank)
   return crtc->funcs->enable_vblank(crtc);
 }

 return dev->driver->enable_vblank(dev, pipe);
}
