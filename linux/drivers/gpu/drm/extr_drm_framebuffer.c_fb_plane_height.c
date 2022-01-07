
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_format_info {int vsub; } ;


 int DIV_ROUND_UP (int,int ) ;

__attribute__((used)) static int fb_plane_height(int height,
      const struct drm_format_info *format, int plane)
{
 if (plane == 0)
  return height;

 return DIV_ROUND_UP(height, format->vsub);
}
