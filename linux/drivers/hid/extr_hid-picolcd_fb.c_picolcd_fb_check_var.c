
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; int activate; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct fb_info {int dummy; } ;
typedef int __u32 ;


 struct fb_var_screeninfo picolcdfb_var ;

__attribute__((used)) static int picolcd_fb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 __u32 bpp = var->bits_per_pixel;
 __u32 activate = var->activate;


 *var = picolcdfb_var;
 var->activate = activate;
 if (bpp >= 8) {
  var->bits_per_pixel = 8;
  var->red.length = 8;
  var->green.length = 8;
  var->blue.length = 8;
 } else {
  var->bits_per_pixel = 1;
  var->red.length = 1;
  var->green.length = 1;
  var->blue.length = 1;
 }
 return 0;
}
