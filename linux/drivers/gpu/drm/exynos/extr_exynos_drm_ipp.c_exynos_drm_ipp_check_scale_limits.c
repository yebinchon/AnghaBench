
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_exynos_ipp_task_rect {int w; int h; } ;
struct drm_exynos_ipp_limit_val {int max; int min; } ;
struct drm_exynos_ipp_limit {int type; struct drm_exynos_ipp_limit_val h; struct drm_exynos_ipp_limit_val v; } ;


 int DRM_EXYNOS_IPP_LIMIT_TYPE_MASK ;
 int DRM_EXYNOS_IPP_LIMIT_TYPE_SCALE ;
 int EINVAL ;
 int __scale_limit_check (int,int,int ,int ) ;

__attribute__((used)) static int exynos_drm_ipp_check_scale_limits(
    struct drm_exynos_ipp_task_rect *src,
    struct drm_exynos_ipp_task_rect *dst,
    const struct drm_exynos_ipp_limit *limits,
    unsigned int num_limits, bool swap)
{
 const struct drm_exynos_ipp_limit_val *lh, *lv;
 int dw, dh;

 for (; num_limits; limits++, num_limits--)
  if ((limits->type & DRM_EXYNOS_IPP_LIMIT_TYPE_MASK) ==
      DRM_EXYNOS_IPP_LIMIT_TYPE_SCALE)
   break;
 if (!num_limits)
  return 0;

 lh = (!swap) ? &limits->h : &limits->v;
 lv = (!swap) ? &limits->v : &limits->h;
 dw = (!swap) ? dst->w : dst->h;
 dh = (!swap) ? dst->h : dst->w;

 if (!__scale_limit_check(src->w, dw, lh->min, lh->max) ||
     !__scale_limit_check(src->h, dh, lv->min, lv->max))
  return -EINVAL;

 return 0;
}
