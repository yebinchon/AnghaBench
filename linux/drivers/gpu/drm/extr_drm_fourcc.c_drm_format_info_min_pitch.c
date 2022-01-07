
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
struct drm_format_info {int num_planes; int* char_per_block; } ;


 int DIV_ROUND_UP_ULL (int,int) ;
 int drm_format_info_block_height (struct drm_format_info const*,int) ;
 int drm_format_info_block_width (struct drm_format_info const*,int) ;

uint64_t drm_format_info_min_pitch(const struct drm_format_info *info,
       int plane, unsigned int buffer_width)
{
 if (!info || plane < 0 || plane >= info->num_planes)
  return 0;

 return DIV_ROUND_UP_ULL((u64)buffer_width * info->char_per_block[plane],
       drm_format_info_block_width(info, plane) *
       drm_format_info_block_height(info, plane));
}
