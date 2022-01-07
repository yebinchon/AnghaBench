
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int dummy; } ;


 scalar_t__ LEGACY_LUT_LENGTH ;
 scalar_t__ drm_color_lut_size (struct drm_property_blob const*) ;

__attribute__((used)) static bool lut_is_legacy(const struct drm_property_blob *lut)
{
 return drm_color_lut_size(lut) == LEGACY_LUT_LENGTH;
}
