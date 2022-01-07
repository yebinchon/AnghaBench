
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_color_lut {int red; int green; int blue; } ;



__attribute__((used)) static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
{
 return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
  (color->blue >> 6);
}
