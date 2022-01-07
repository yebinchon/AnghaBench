
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drm_color_range { ____Placeholder_drm_color_range } drm_color_range ;


 int ARRAY_SIZE (char const**) ;
 scalar_t__ WARN_ON (int) ;
 char const** color_range_name ;

const char *drm_get_color_range_name(enum drm_color_range range)
{
 if (WARN_ON(range >= ARRAY_SIZE(color_range_name)))
  return "unknown";

 return color_range_name[range];
}
