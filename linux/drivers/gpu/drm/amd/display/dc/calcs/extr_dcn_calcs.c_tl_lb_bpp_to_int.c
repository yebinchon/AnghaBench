
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lb_pixel_depth { ____Placeholder_lb_pixel_depth } lb_pixel_depth ;







__attribute__((used)) static int tl_lb_bpp_to_int(enum lb_pixel_depth depth)
{
 switch (depth) {
 case 131:
  return 18;
 case 130:
  return 24;
 case 129:
  return 30;
 case 128:
  return 36;
 default:
  return 30;
 }
}
