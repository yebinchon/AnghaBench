
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_format_info {int dummy; } ;


 int DRM_FORMAT_ABGR8888 ;
 int DRM_FORMAT_NV12 ;
 int DRM_FORMAT_RGB332 ;
 int DRM_FORMAT_RGB888 ;
 int DRM_FORMAT_X0L2 ;
 int DRM_FORMAT_XRGB4444 ;
 int DRM_FORMAT_YUV422 ;
 int FAIL_ON (int) ;
 int UINT_MAX ;
 struct drm_format_info* drm_format_info (int ) ;
 int drm_format_info_min_pitch (struct drm_format_info const*,int,int) ;

int igt_check_drm_format_min_pitch(void *ignored)
{
 const struct drm_format_info *info = ((void*)0);


 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);


 info = drm_format_info(DRM_FORMAT_RGB332);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 1);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 640);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 1024);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 1920);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 4096);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 671);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX);
 FAIL_ON(drm_format_info_min_pitch(info, 0, (UINT_MAX - 1)) !=
   (uint64_t)(UINT_MAX - 1));


 info = drm_format_info(DRM_FORMAT_XRGB4444);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 4);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 1280);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 2048);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 3840);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 8192);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 1342);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX * 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, (UINT_MAX - 1)) !=
   (uint64_t)(UINT_MAX - 1) * 2);


 info = drm_format_info(DRM_FORMAT_RGB888);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 3);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 6);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 1920);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 3072);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 5760);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 12288);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 2013);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX * 3);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX - 1) !=
   (uint64_t)(UINT_MAX - 1) * 3);


 info = drm_format_info(DRM_FORMAT_ABGR8888);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 4);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 8);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 2560);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 4096);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 7680);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 16384);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 2684);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX * 4);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX - 1) !=
   (uint64_t)(UINT_MAX - 1) * 4);


 info = drm_format_info(DRM_FORMAT_NV12);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 1);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 1) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 1) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 640);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 320) != 640);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 1024);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 512) != 1024);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 1920);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 960) != 1920);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 4096);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 2048) != 4096);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 671);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 336) != 672);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX);
 FAIL_ON(drm_format_info_min_pitch(info, 1, UINT_MAX / 2 + 1) !=
   (uint64_t)UINT_MAX + 1);
 FAIL_ON(drm_format_info_min_pitch(info, 0, (UINT_MAX - 1)) !=
   (uint64_t)(UINT_MAX - 1));
 FAIL_ON(drm_format_info_min_pitch(info, 1, (UINT_MAX - 1) / 2) !=
   (uint64_t)(UINT_MAX - 1));


 info = drm_format_info(DRM_FORMAT_YUV422);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 3, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 1);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 1) != 1);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 1) != 1);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 2) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 2) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 640);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 320) != 320);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 320) != 320);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 1024);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 512) != 512);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 512) != 512);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 1920);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 960) != 960);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 960) != 960);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 4096);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 2048) != 2048);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 2048) != 2048);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 671);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 336) != 336);
 FAIL_ON(drm_format_info_min_pitch(info, 2, 336) != 336);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX);
 FAIL_ON(drm_format_info_min_pitch(info, 1, UINT_MAX / 2 + 1) !=
   (uint64_t)UINT_MAX / 2 + 1);
 FAIL_ON(drm_format_info_min_pitch(info, 2, UINT_MAX / 2 + 1) !=
   (uint64_t)UINT_MAX / 2 + 1);
 FAIL_ON(drm_format_info_min_pitch(info, 0, (UINT_MAX - 1) / 2) !=
   (uint64_t)(UINT_MAX - 1) / 2);
 FAIL_ON(drm_format_info_min_pitch(info, 1, (UINT_MAX - 1) / 2) !=
   (uint64_t)(UINT_MAX - 1) / 2);
 FAIL_ON(drm_format_info_min_pitch(info, 2, (UINT_MAX - 1) / 2) !=
   (uint64_t)(UINT_MAX - 1) / 2);


 info = drm_format_info(DRM_FORMAT_X0L2);
 FAIL_ON(!info);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, -1, 0) != 0);
 FAIL_ON(drm_format_info_min_pitch(info, 1, 0) != 0);

 FAIL_ON(drm_format_info_min_pitch(info, 0, 1) != 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 2) != 4);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 640) != 1280);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1024) != 2048);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 1920) != 3840);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 4096) != 8192);
 FAIL_ON(drm_format_info_min_pitch(info, 0, 671) != 1342);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX) !=
   (uint64_t)UINT_MAX * 2);
 FAIL_ON(drm_format_info_min_pitch(info, 0, UINT_MAX - 1) !=
   (uint64_t)(UINT_MAX - 1) * 2);

 return 0;
}
