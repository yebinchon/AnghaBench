
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_color_lut {scalar_t__ red; scalar_t__ green; scalar_t__ blue; } ;


 int MAX_DRM_LUT_VALUE ;

__attribute__((used)) static bool __is_lut_linear(const struct drm_color_lut *lut, uint32_t size)
{
 int i;
 uint32_t expected;
 int delta;

 for (i = 0; i < size; i++) {

  if ((lut[i].red != lut[i].green) || (lut[i].green != lut[i].blue))
   return 0;

  expected = i * MAX_DRM_LUT_VALUE / (size-1);


  delta = lut[i].red - expected;
  if (delta < -1 || 1 < delta)
   return 0;
 }
 return 1;
}
