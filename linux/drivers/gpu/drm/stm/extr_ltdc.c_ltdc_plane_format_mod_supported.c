
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct drm_plane {int dummy; } ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;

__attribute__((used)) static bool ltdc_plane_format_mod_supported(struct drm_plane *plane,
         u32 format,
         u64 modifier)
{
 if (modifier == DRM_FORMAT_MOD_LINEAR)
  return 1;

 return 0;
}
