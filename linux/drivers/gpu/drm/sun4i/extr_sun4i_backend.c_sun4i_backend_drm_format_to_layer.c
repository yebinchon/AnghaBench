
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int EINVAL ;
 int SUN4I_BACKEND_LAY_FBFMT_ARGB1555 ;
 int SUN4I_BACKEND_LAY_FBFMT_ARGB4444 ;
 int SUN4I_BACKEND_LAY_FBFMT_ARGB8888 ;
 int SUN4I_BACKEND_LAY_FBFMT_RGB565 ;
 int SUN4I_BACKEND_LAY_FBFMT_RGB888 ;
 int SUN4I_BACKEND_LAY_FBFMT_RGBA4444 ;
 int SUN4I_BACKEND_LAY_FBFMT_RGBA5551 ;
 int SUN4I_BACKEND_LAY_FBFMT_XRGB8888 ;

__attribute__((used)) static int sun4i_backend_drm_format_to_layer(u32 format, u32 *mode)
{
 switch (format) {
 case 133:
  *mode = SUN4I_BACKEND_LAY_FBFMT_ARGB8888;
  break;

 case 134:
  *mode = SUN4I_BACKEND_LAY_FBFMT_ARGB4444;
  break;

 case 135:
  *mode = SUN4I_BACKEND_LAY_FBFMT_ARGB1555;
  break;

 case 129:
  *mode = SUN4I_BACKEND_LAY_FBFMT_RGBA5551;
  break;

 case 130:
  *mode = SUN4I_BACKEND_LAY_FBFMT_RGBA4444;
  break;

 case 128:
  *mode = SUN4I_BACKEND_LAY_FBFMT_XRGB8888;
  break;

 case 131:
  *mode = SUN4I_BACKEND_LAY_FBFMT_RGB888;
  break;

 case 132:
  *mode = SUN4I_BACKEND_LAY_FBFMT_RGB565;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
