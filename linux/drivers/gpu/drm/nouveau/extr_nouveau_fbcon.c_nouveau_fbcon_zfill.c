
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct fb_info* fbdev; } ;
struct nouveau_fbdev {TYPE_2__ helper; } ;
struct TYPE_6__ {int yres_virtual; int xres_virtual; } ;
struct fb_info {TYPE_1__* fbops; TYPE_3__ var; } ;
struct fb_fillrect {int rop; scalar_t__ color; int height; int width; scalar_t__ dy; scalar_t__ dx; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int (* fb_fillrect ) (struct fb_info*,struct fb_fillrect*) ;} ;


 int ROP_COPY ;
 int stub1 (struct fb_info*,struct fb_fillrect*) ;

__attribute__((used)) static void
nouveau_fbcon_zfill(struct drm_device *dev, struct nouveau_fbdev *fbcon)
{
 struct fb_info *info = fbcon->helper.fbdev;
 struct fb_fillrect rect;





 rect.dx = rect.dy = 0;
 rect.width = info->var.xres_virtual;
 rect.height = info->var.yres_virtual;
 rect.color = 0;
 rect.rop = ROP_COPY;
 info->fbops->fb_fillrect(info, &rect);
}
