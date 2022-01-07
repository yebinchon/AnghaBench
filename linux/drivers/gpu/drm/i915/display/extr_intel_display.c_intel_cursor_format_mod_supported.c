
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct drm_plane {int dummy; } ;


 scalar_t__ DRM_FORMAT_ARGB8888 ;
 scalar_t__ DRM_FORMAT_MOD_LINEAR ;

__attribute__((used)) static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
           u32 format, u64 modifier)
{
 return modifier == DRM_FORMAT_MOD_LINEAR &&
  format == DRM_FORMAT_ARGB8888;
}
