
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int picture_aspect_ratio; } ;
typedef enum dc_aspect_ratio { ____Placeholder_dc_aspect_ratio } dc_aspect_ratio ;



__attribute__((used)) static enum dc_aspect_ratio
get_aspect_ratio(const struct drm_display_mode *mode_in)
{

 return (enum dc_aspect_ratio) mode_in->picture_aspect_ratio;
}
