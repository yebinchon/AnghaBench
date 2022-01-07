
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_drm {TYPE_2__* fbcon; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {TYPE_3__* fbdev; } ;
struct TYPE_5__ {TYPE_1__ helper; int saved_flags; } ;


 int FBINFO_HWACCEL_DISABLED ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

void
nouveau_fbcon_accel_save_disable(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 if (drm->fbcon && drm->fbcon->helper.fbdev) {
  drm->fbcon->saved_flags = drm->fbcon->helper.fbdev->flags;
  drm->fbcon->helper.fbdev->flags |= FBINFO_HWACCEL_DISABLED;
 }
}
