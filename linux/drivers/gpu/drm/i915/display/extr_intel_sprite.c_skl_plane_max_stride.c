
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_plane {int dummy; } ;
struct drm_format_info {int* cpp; } ;


 struct drm_format_info* drm_format_info (int ) ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 unsigned int min (int,int) ;

__attribute__((used)) static unsigned int
skl_plane_max_stride(struct intel_plane *plane,
       u32 pixel_format, u64 modifier,
       unsigned int rotation)
{
 const struct drm_format_info *info = drm_format_info(pixel_format);
 int cpp = info->cpp[0];





 if (drm_rotation_90_or_270(rotation))
  return min(8192, 32768 / cpp);
 else
  return min(8192 * cpp, 32768);
}
