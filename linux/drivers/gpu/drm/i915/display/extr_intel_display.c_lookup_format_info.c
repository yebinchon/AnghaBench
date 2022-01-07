
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_format_info {scalar_t__ format; } ;



__attribute__((used)) static const struct drm_format_info *
lookup_format_info(const struct drm_format_info formats[],
     int num_formats, u32 format)
{
 int i;

 for (i = 0; i < num_formats; i++) {
  if (formats[i].format == format)
   return &formats[i];
 }

 return ((void*)0);
}
