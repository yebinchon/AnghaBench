
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hvs_format {scalar_t__ drm; } ;


 unsigned int ARRAY_SIZE (struct hvs_format const*) ;
 struct hvs_format const* hvs_formats ;

__attribute__((used)) static const struct hvs_format *vc4_get_hvs_format(u32 drm_format)
{
 unsigned i;

 for (i = 0; i < ARRAY_SIZE(hvs_formats); i++) {
  if (hvs_formats[i].drm == drm_format)
   return &hvs_formats[i];
 }

 return ((void*)0);
}
