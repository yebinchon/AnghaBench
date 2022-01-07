
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_color_lut {int blue; int green; } ;


 int drm_color_lut_extract (int ,int) ;

__attribute__((used)) static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
{
 return drm_color_lut_extract(color->green, 14) << 16 |
  drm_color_lut_extract(color->blue, 14);
}
