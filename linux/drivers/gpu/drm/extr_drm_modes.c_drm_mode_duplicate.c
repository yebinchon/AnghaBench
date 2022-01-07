
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_mode_copy (struct drm_display_mode*,struct drm_display_mode const*) ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;

struct drm_display_mode *drm_mode_duplicate(struct drm_device *dev,
         const struct drm_display_mode *mode)
{
 struct drm_display_mode *nmode;

 nmode = drm_mode_create(dev);
 if (!nmode)
  return ((void*)0);

 drm_mode_copy(nmode, mode);

 return nmode;
}
