
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct fb_info* fbdev; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_7__ {TYPE_4__ device; } ;
struct nouveau_drm {TYPE_3__ client; struct nouveau_fbdev* fbcon; } ;
struct fb_info {int * fbops; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NV_DEVICE_INFO_V0_FERMI ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_ops ;
 int nv04_fbcon_accel_init (struct fb_info*) ;
 int nv50_fbcon_accel_init (struct fb_info*) ;
 int nvc0_fbcon_accel_init (struct fb_info*) ;

__attribute__((used)) static void
nouveau_fbcon_accel_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_fbdev *fbcon = drm->fbcon;
 struct fb_info *info = fbcon->helper.fbdev;
 int ret;

 if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA)
  ret = nv04_fbcon_accel_init(info);
 else
 if (drm->client.device.info.family < NV_DEVICE_INFO_V0_FERMI)
  ret = nv50_fbcon_accel_init(info);
 else
  ret = nvc0_fbcon_accel_init(info);

 if (ret == 0)
  info->fbops = &nouveau_fbcon_ops;
}
