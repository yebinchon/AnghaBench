
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {int dummy; } ;


 int ERANGE ;
 int drm_calc_scale (int,int) ;
 int drm_rect_width (struct drm_rect const*) ;

int drm_rect_calc_hscale(const struct drm_rect *src,
    const struct drm_rect *dst,
    int min_hscale, int max_hscale)
{
 int src_w = drm_rect_width(src);
 int dst_w = drm_rect_width(dst);
 int hscale = drm_calc_scale(src_w, dst_w);

 if (hscale < 0 || dst_w == 0)
  return hscale;

 if (hscale < min_hscale || hscale > max_hscale)
  return -ERANGE;

 return hscale;
}
