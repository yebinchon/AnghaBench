
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ family; } ;
struct nvif_device {TYPE_2__ info; } ;
struct TYPE_4__ {int dev; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct TYPE_6__ {int mutex; struct nvif_device device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct fb_info {scalar_t__ state; int flags; struct nouveau_fbdev* par; } ;
struct fb_image {int dummy; } ;


 int ENODEV ;
 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 scalar_t__ NV_DEVICE_INFO_V0_FERMI ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int drm_fb_helper_cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int in_interrupt () ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nouveau_fbcon_gpu_lockup (struct fb_info*) ;
 int nv04_fbcon_imageblit (struct fb_info*,struct fb_image const*) ;
 int nv50_fbcon_imageblit (struct fb_info*,struct fb_image const*) ;
 int nvc0_fbcon_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void
nouveau_fbcon_imageblit(struct fb_info *info, const struct fb_image *image)
{
 struct nouveau_fbdev *fbcon = info->par;
 struct nouveau_drm *drm = nouveau_drm(fbcon->helper.dev);
 struct nvif_device *device = &drm->client.device;
 int ret;

 if (info->state != FBINFO_STATE_RUNNING)
  return;

 ret = -ENODEV;
 if (!in_interrupt() && !(info->flags & FBINFO_HWACCEL_DISABLED) &&
     mutex_trylock(&drm->client.mutex)) {
  if (device->info.family < NV_DEVICE_INFO_V0_TESLA)
   ret = nv04_fbcon_imageblit(info, image);
  else
  if (device->info.family < NV_DEVICE_INFO_V0_FERMI)
   ret = nv50_fbcon_imageblit(info, image);
  else
   ret = nvc0_fbcon_imageblit(info, image);
  mutex_unlock(&drm->client.mutex);
 }

 if (ret == 0)
  return;

 if (ret != -ENODEV)
  nouveau_fbcon_gpu_lockup(info);
 drm_fb_helper_cfb_imageblit(info, image);
}
