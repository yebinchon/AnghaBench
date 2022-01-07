
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_format_info {int hsub; } ;


 int DIV_ROUND_UP (int,int ) ;

__attribute__((used)) static int fb_plane_width(int width,
     const struct drm_format_info *format, int plane)
{
 if (plane == 0)
  return width;

 return DIV_ROUND_UP(width, format->hsub);
}
