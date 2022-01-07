
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_format_info {int format; int* cpp; } ;





u32 komeda_get_afbc_format_bpp(const struct drm_format_info *info, u64 modifier)
{
 u32 bpp;

 switch (info->format) {
 case 128:
  bpp = 12;
  break;
 case 129:
  bpp = 15;
  break;
 default:
  bpp = info->cpp[0] * 8;
  break;
 }

 return bpp;
}
