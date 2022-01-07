
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 int EINVAL ;
 int drm_color_lut_size (struct drm_property_blob const*) ;

__attribute__((used)) static int check_lut_size(const struct drm_property_blob *lut, int expected)
{
 int len;

 if (!lut)
  return 0;

 len = drm_color_lut_size(lut);
 if (len != expected) {
  DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
         len, expected);
  return -EINVAL;
 }

 return 0;
}
