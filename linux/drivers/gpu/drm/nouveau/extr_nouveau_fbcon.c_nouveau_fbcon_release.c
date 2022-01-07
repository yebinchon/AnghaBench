
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct nouveau_drm {TYPE_2__* dev; } ;
struct fb_info {struct nouveau_fbdev* par; } ;
struct TYPE_4__ {int dev; } ;


 struct nouveau_drm* nouveau_drm (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static int
nouveau_fbcon_release(struct fb_info *info, int user)
{
 struct nouveau_fbdev *fbcon = info->par;
 struct nouveau_drm *drm = nouveau_drm(fbcon->helper.dev);
 pm_runtime_put(drm->dev->dev);
 return 0;
}
