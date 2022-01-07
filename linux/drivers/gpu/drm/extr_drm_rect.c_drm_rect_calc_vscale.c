
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {int dummy; } ;


 int ERANGE ;
 int drm_calc_scale (int,int) ;
 int drm_rect_height (struct drm_rect const*) ;

int drm_rect_calc_vscale(const struct drm_rect *src,
    const struct drm_rect *dst,
    int min_vscale, int max_vscale)
{
 int src_h = drm_rect_height(src);
 int dst_h = drm_rect_height(dst);
 int vscale = drm_calc_scale(src_h, dst_h);

 if (vscale < 0 || dst_h == 0)
  return vscale;

 if (vscale < min_vscale || vscale > max_vscale)
  return -ERANGE;

 return vscale;
}
