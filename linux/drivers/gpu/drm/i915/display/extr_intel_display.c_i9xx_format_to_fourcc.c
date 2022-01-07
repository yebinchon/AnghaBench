
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_FORMAT_C8 ;
 int DRM_FORMAT_RGB565 ;
 int DRM_FORMAT_XBGR2101010 ;
 int DRM_FORMAT_XBGR8888 ;
 int DRM_FORMAT_XRGB1555 ;
 int DRM_FORMAT_XRGB2101010 ;
 int DRM_FORMAT_XRGB8888 ;

__attribute__((used)) static int i9xx_format_to_fourcc(int format)
{
 switch (format) {
 case 134:
  return DRM_FORMAT_C8;
 case 132:
  return DRM_FORMAT_XRGB1555;
 case 131:
  return DRM_FORMAT_RGB565;
 default:
 case 130:
  return DRM_FORMAT_XRGB8888;
 case 128:
  return DRM_FORMAT_XBGR8888;
 case 133:
  return DRM_FORMAT_XRGB2101010;
 case 129:
  return DRM_FORMAT_XBGR2101010;
 }
}
