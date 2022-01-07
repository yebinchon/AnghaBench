
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_FORMAT_ABGR16161616F ;
 int DRM_FORMAT_ABGR8888 ;
 int DRM_FORMAT_ARGB16161616F ;
 int DRM_FORMAT_ARGB8888 ;
 int DRM_FORMAT_NV12 ;
 int DRM_FORMAT_P010 ;
 int DRM_FORMAT_P012 ;
 int DRM_FORMAT_P016 ;
 int DRM_FORMAT_RGB565 ;
 int DRM_FORMAT_XBGR16161616F ;
 int DRM_FORMAT_XBGR2101010 ;
 int DRM_FORMAT_XBGR8888 ;
 int DRM_FORMAT_XRGB16161616F ;
 int DRM_FORMAT_XRGB2101010 ;
 int DRM_FORMAT_XRGB8888 ;
 int DRM_FORMAT_XVYU12_16161616 ;
 int DRM_FORMAT_XVYU16161616 ;
 int DRM_FORMAT_XVYU2101010 ;
 int DRM_FORMAT_Y210 ;
 int DRM_FORMAT_Y212 ;
 int DRM_FORMAT_Y216 ;
int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
{
 switch (format) {
 case 137:
  return DRM_FORMAT_RGB565;
 case 141:
  return DRM_FORMAT_NV12;
 case 140:
  return DRM_FORMAT_P010;
 case 139:
  return DRM_FORMAT_P012;
 case 138:
  return DRM_FORMAT_P016;
 case 133:
  return DRM_FORMAT_Y210;
 case 132:
  return DRM_FORMAT_Y212;
 case 131:
  return DRM_FORMAT_Y216;
 case 130:
  return DRM_FORMAT_XVYU2101010;
 case 129:
  return DRM_FORMAT_XVYU12_16161616;
 case 128:
  return DRM_FORMAT_XVYU16161616;
 default:
 case 134:
  if (rgb_order) {
   if (alpha)
    return DRM_FORMAT_ABGR8888;
   else
    return DRM_FORMAT_XBGR8888;
  } else {
   if (alpha)
    return DRM_FORMAT_ARGB8888;
   else
    return DRM_FORMAT_XRGB8888;
  }
 case 135:
  if (rgb_order)
   return DRM_FORMAT_XBGR2101010;
  else
   return DRM_FORMAT_XRGB2101010;
 case 136:
  if (rgb_order) {
   if (alpha)
    return DRM_FORMAT_ABGR16161616F;
   else
    return DRM_FORMAT_XBGR16161616F;
  } else {
   if (alpha)
    return DRM_FORMAT_ARGB16161616F;
   else
    return DRM_FORMAT_XRGB16161616F;
  }
 }
}
