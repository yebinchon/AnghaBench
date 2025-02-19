
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct nouveau_drm {int dummy; } ;
struct fb_info {int flags; struct nouveau_fbdev* par; } ;


 int FBINFO_HWACCEL_DISABLED ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 struct nouveau_drm* nouveau_drm (int ) ;

void nouveau_fbcon_gpu_lockup(struct fb_info *info)
{
 struct nouveau_fbdev *fbcon = info->par;
 struct nouveau_drm *drm = nouveau_drm(fbcon->helper.dev);

 NV_ERROR(drm, "GPU lockup - switching to software fbcon\n");
 info->flags |= FBINFO_HWACCEL_DISABLED;
}
