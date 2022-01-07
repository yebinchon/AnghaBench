
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct nouveau_fbdev {int surf2d; int clip; int rop; int patt; int gdi; int blit; int twod; TYPE_2__ helper; } ;
struct nouveau_drm {scalar_t__ channel; struct nouveau_fbdev* fbcon; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int FBINFO_HWACCEL_DISABLED ;
 int console_lock () ;
 int console_unlock () ;
 int nouveau_channel_idle (scalar_t__) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nvif_object_fini (int *) ;

__attribute__((used)) static void
nouveau_fbcon_accel_fini(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_fbdev *fbcon = drm->fbcon;
 if (fbcon && drm->channel) {
  console_lock();
  if (fbcon->helper.fbdev)
   fbcon->helper.fbdev->flags |= FBINFO_HWACCEL_DISABLED;
  console_unlock();
  nouveau_channel_idle(drm->channel);
  nvif_object_fini(&fbcon->twod);
  nvif_object_fini(&fbcon->blit);
  nvif_object_fini(&fbcon->gdi);
  nvif_object_fini(&fbcon->patt);
  nvif_object_fini(&fbcon->rop);
  nvif_object_fini(&fbcon->clip);
  nvif_object_fini(&fbcon->surf2d);
 }
}
