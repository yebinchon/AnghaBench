
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct drm_plane {int dummy; } ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;

__attribute__((used)) static bool drm_simple_kms_format_mod_supported(struct drm_plane *plane,
      uint32_t format,
      uint64_t modifier)
{
 return modifier == DRM_FORMAT_MOD_LINEAR;
}
