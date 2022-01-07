
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_format_info {int dummy; } ;


 int DRM_FORMAT_NV12 ;
 int DRM_FORMAT_X0L0 ;
 int DRM_FORMAT_XRGB4444 ;
 int DRM_FORMAT_YUV422 ;
 int FAIL_ON (int) ;
 struct drm_format_info* drm_format_info (int ) ;
 int drm_format_info_block_width (struct drm_format_info const*,int) ;

int igt_check_drm_format_block_width(void *ignored)
{
 const struct drm_format_info *info = ((void*)0);


 FAIL_ON(drm_format_info_block_width(info, 0) != 0);
 FAIL_ON(drm_format_info_block_width(info, -1) != 0);
 FAIL_ON(drm_format_info_block_width(info, 1) != 0);


 info = drm_format_info(DRM_FORMAT_XRGB4444);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_block_width(info, 0) != 1);
 FAIL_ON(drm_format_info_block_width(info, 1) != 0);
 FAIL_ON(drm_format_info_block_width(info, -1) != 0);


 info = drm_format_info(DRM_FORMAT_NV12);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_block_width(info, 0) != 1);
 FAIL_ON(drm_format_info_block_width(info, 1) != 1);
 FAIL_ON(drm_format_info_block_width(info, 2) != 0);
 FAIL_ON(drm_format_info_block_width(info, -1) != 0);


 info = drm_format_info(DRM_FORMAT_YUV422);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_block_width(info, 0) != 1);
 FAIL_ON(drm_format_info_block_width(info, 1) != 1);
 FAIL_ON(drm_format_info_block_width(info, 2) != 1);
 FAIL_ON(drm_format_info_block_width(info, 3) != 0);
 FAIL_ON(drm_format_info_block_width(info, -1) != 0);


 info = drm_format_info(DRM_FORMAT_X0L0);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_block_width(info, 0) != 2);
 FAIL_ON(drm_format_info_block_width(info, 1) != 0);
 FAIL_ON(drm_format_info_block_width(info, -1) != 0);

 return 0;
}
