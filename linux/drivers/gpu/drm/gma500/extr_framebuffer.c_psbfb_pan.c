
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * obj; struct drm_device* dev; } ;
struct psb_framebuffer {TYPE_2__ base; } ;
struct psb_fbdev {struct psb_framebuffer pfb; } ;
struct gtt_range {scalar_t__ npage; } ;
struct fb_var_screeninfo {int yoffset; } ;
struct TYPE_3__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct psb_fbdev* par; } ;
struct drm_device {int dummy; } ;


 int psb_gtt_roll (struct drm_device*,struct gtt_range*,int) ;
 struct gtt_range* to_gtt_range (int ) ;

__attribute__((used)) static int psbfb_pan(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct psb_fbdev *fbdev = info->par;
 struct psb_framebuffer *psbfb = &fbdev->pfb;
 struct drm_device *dev = psbfb->base.dev;
 struct gtt_range *gtt = to_gtt_range(psbfb->base.obj[0]);






 if (gtt->npage) {


  int pages = info->fix.line_length >> 12;
  psb_gtt_roll(dev, gtt, var->yoffset * pages);
 }
        return 0;
}
