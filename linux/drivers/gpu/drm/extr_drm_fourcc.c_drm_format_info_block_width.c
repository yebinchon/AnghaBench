
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_format_info {int num_planes; unsigned int* block_w; } ;



unsigned int drm_format_info_block_width(const struct drm_format_info *info,
      int plane)
{
 if (!info || plane < 0 || plane >= info->num_planes)
  return 0;

 if (!info->block_w[plane])
  return 1;
 return info->block_w[plane];
}
