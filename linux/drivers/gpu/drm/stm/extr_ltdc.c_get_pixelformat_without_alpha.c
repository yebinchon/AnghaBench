
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int DRM_FORMAT_RGBX4444 ;
 int DRM_FORMAT_RGBX5551 ;
 int DRM_FORMAT_RGBX8888 ;
 int DRM_FORMAT_XRGB1555 ;
 int DRM_FORMAT_XRGB4444 ;
 int DRM_FORMAT_XRGB8888 ;

__attribute__((used)) static inline u32 get_pixelformat_without_alpha(u32 drm)
{
 switch (drm) {
 case 132:
  return DRM_FORMAT_XRGB4444;
 case 130:
  return DRM_FORMAT_RGBX4444;
 case 133:
  return DRM_FORMAT_XRGB1555;
 case 129:
  return DRM_FORMAT_RGBX5551;
 case 131:
  return DRM_FORMAT_XRGB8888;
 case 128:
  return DRM_FORMAT_RGBX8888;
 default:
  return 0;
 }
}
