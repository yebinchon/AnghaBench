
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct de2_fmt_info {scalar_t__ drm_fmt; } ;


 unsigned int ARRAY_SIZE (struct de2_fmt_info const*) ;
 struct de2_fmt_info const* de2_formats ;

const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(de2_formats); ++i)
  if (de2_formats[i].drm_fmt == format)
   return &de2_formats[i];

 return ((void*)0);
}
