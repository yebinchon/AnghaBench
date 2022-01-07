
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_color_lut {int blue; int green; int red; } ;


 int drm_color_lut_extract (int ,int) ;

__attribute__((used)) static u32 ilk_lut_10(const struct drm_color_lut *color)
{
 return drm_color_lut_extract(color->red, 10) << 20 |
  drm_color_lut_extract(color->green, 10) << 10 |
  drm_color_lut_extract(color->blue, 10);
}
