
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct drm_plane {int dummy; } ;
struct drm_format_info {int num_planes; } ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 struct drm_format_info* drm_format_info (int ) ;

__attribute__((used)) static bool tegra_plane_format_mod_supported(struct drm_plane *plane,
          uint32_t format,
          uint64_t modifier)
{
 const struct drm_format_info *info = drm_format_info(format);

 if (modifier == DRM_FORMAT_MOD_LINEAR)
  return 1;

 if (info->num_planes == 1)
  return 1;

 return 0;
}
