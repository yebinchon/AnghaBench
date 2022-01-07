
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct vmw_fb_par {unsigned int* pseudo_palette; TYPE_2__* set_fb; } ;
struct fb_info {struct vmw_fb_par* par; } ;
struct TYPE_4__ {TYPE_1__* format; } ;
struct TYPE_3__ {int depth; int* cpp; } ;


 int DRM_ERROR (char*,int,...) ;

__attribute__((used)) static int vmw_fb_setcolreg(unsigned regno, unsigned red, unsigned green,
       unsigned blue, unsigned transp,
       struct fb_info *info)
{
 struct vmw_fb_par *par = info->par;
 u32 *pal = par->pseudo_palette;

 if (regno > 15) {
  DRM_ERROR("Bad regno %u.\n", regno);
  return 1;
 }

 switch (par->set_fb->format->depth) {
 case 24:
 case 32:
  pal[regno] = ((red & 0xff00) << 8) |
         (green & 0xff00) |
        ((blue & 0xff00) >> 8);
  break;
 default:
  DRM_ERROR("Bad depth %u, bpp %u.\n",
     par->set_fb->format->depth,
     par->set_fb->format->cpp[0] * 8);
  return 1;
 }

 return 0;
}
