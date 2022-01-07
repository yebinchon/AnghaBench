
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ltdc_pix_fmt { ____Placeholder_ltdc_pix_fmt } ltdc_pix_fmt ;


 int DRM_FORMAT_ARGB1555 ;
 int DRM_FORMAT_ARGB4444 ;
 int DRM_FORMAT_ARGB8888 ;
 int DRM_FORMAT_C8 ;
 int DRM_FORMAT_RGB565 ;
 int DRM_FORMAT_RGB888 ;
 int DRM_FORMAT_RGBA8888 ;
__attribute__((used)) static inline u32 to_drm_pixelformat(enum ltdc_pix_fmt pf)
{
 switch (pf) {
 case 133:
  return DRM_FORMAT_ARGB8888;
 case 128:
  return DRM_FORMAT_RGBA8888;
 case 129:
  return DRM_FORMAT_RGB888;
 case 130:
  return DRM_FORMAT_RGB565;
 case 135:
  return DRM_FORMAT_ARGB1555;
 case 134:
  return DRM_FORMAT_ARGB4444;
 case 132:
  return DRM_FORMAT_C8;
 case 137:
 case 136:
 case 131:
 default:
  return 0;
 }
}
