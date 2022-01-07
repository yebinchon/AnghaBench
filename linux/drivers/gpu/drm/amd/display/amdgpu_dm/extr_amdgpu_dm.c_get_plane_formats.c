
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_plane {int type; } ;
struct TYPE_2__ {int nv12; } ;
struct dc_plane_cap {TYPE_1__ pixel_format_support; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_FORMAT_NV12 ;



 int * cursor_formats ;
 int * overlay_formats ;
 int * rgb_formats ;

__attribute__((used)) static int get_plane_formats(const struct drm_plane *plane,
        const struct dc_plane_cap *plane_cap,
        uint32_t *formats, int max_formats)
{
 int i, num_formats = 0;







 switch (plane->type) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(rgb_formats); ++i) {
   if (num_formats >= max_formats)
    break;

   formats[num_formats++] = rgb_formats[i];
  }

  if (plane_cap && plane_cap->pixel_format_support.nv12)
   formats[num_formats++] = DRM_FORMAT_NV12;
  break;

 case 129:
  for (i = 0; i < ARRAY_SIZE(overlay_formats); ++i) {
   if (num_formats >= max_formats)
    break;

   formats[num_formats++] = overlay_formats[i];
  }
  break;

 case 130:
  for (i = 0; i < ARRAY_SIZE(cursor_formats); ++i) {
   if (num_formats >= max_formats)
    break;

   formats[num_formats++] = cursor_formats[i];
  }
  break;
 }

 return num_formats;
}
