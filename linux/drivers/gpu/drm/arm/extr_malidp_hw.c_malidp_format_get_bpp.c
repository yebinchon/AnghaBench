
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_format_info {int* cpp; } ;





 struct drm_format_info* drm_format_info (int) ;

int malidp_format_get_bpp(u32 fmt)
{
 const struct drm_format_info *info = drm_format_info(fmt);
 int bpp = info->cpp[0] * 8;

 if (bpp == 0) {
  switch (fmt) {
  case 130:
   bpp = 30;
   break;
  case 129:
   bpp = 15;
   break;
  case 128:
   bpp = 12;
   break;
  default:
   bpp = 0;
  }
 }

 return bpp;
}
