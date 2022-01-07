
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_1__ transp; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;

__attribute__((used)) static int vmw_fb_compute_depth(struct fb_var_screeninfo *var,
    int *depth)
{
 switch (var->bits_per_pixel) {
 case 32:
  *depth = (var->transp.length > 0) ? 32 : 24;
  break;
 default:
  DRM_ERROR("Bad bpp %u.\n", var->bits_per_pixel);
  return -EINVAL;
 }

 return 0;
}
