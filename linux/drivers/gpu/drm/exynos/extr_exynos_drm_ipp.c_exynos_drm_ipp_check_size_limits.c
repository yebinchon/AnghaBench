
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int w; int h; int y; int x; } ;
struct TYPE_5__ {int* pitch; int height; } ;
struct exynos_drm_ipp_buffer {TYPE_3__ rect; TYPE_2__ buf; TYPE_1__* format; } ;
struct drm_exynos_ipp_limit_val {int align; } ;
struct drm_ipp_limit {struct drm_exynos_ipp_limit_val v; struct drm_exynos_ipp_limit_val h; } ;
struct drm_exynos_ipp_limit {int dummy; } ;
typedef enum drm_ipp_size_id { ____Placeholder_drm_ipp_size_id } drm_ipp_size_id ;
struct TYPE_4__ {int* cpp; } ;


 int EINVAL ;
 int IPP_LIMIT_AREA ;
 int IPP_LIMIT_BUFFER ;
 int IPP_LIMIT_ROTATED ;
 int __align_check (int ,int ) ;
 int __get_size_limit (struct drm_exynos_ipp_limit const*,unsigned int,int,struct drm_ipp_limit*) ;
 int __size_limit_check (int,struct drm_exynos_ipp_limit_val*) ;

__attribute__((used)) static int exynos_drm_ipp_check_size_limits(struct exynos_drm_ipp_buffer *buf,
 const struct drm_exynos_ipp_limit *limits, unsigned int num_limits,
 bool rotate, bool swap)
{
 enum drm_ipp_size_id id = rotate ? IPP_LIMIT_ROTATED : IPP_LIMIT_AREA;
 struct drm_ipp_limit l;
 struct drm_exynos_ipp_limit_val *lh = &l.h, *lv = &l.v;
 int real_width = buf->buf.pitch[0] / buf->format->cpp[0];

 if (!limits)
  return 0;

 __get_size_limit(limits, num_limits, IPP_LIMIT_BUFFER, &l);
 if (!__size_limit_check(real_width, &l.h) ||
     !__size_limit_check(buf->buf.height, &l.v))
  return -EINVAL;

 if (swap) {
  lv = &l.h;
  lh = &l.v;
 }
 __get_size_limit(limits, num_limits, id, &l);
 if (!__size_limit_check(buf->rect.w, lh) ||
     !__align_check(buf->rect.x, lh->align) ||
     !__size_limit_check(buf->rect.h, lv) ||
     !__align_check(buf->rect.y, lv->align))
  return -EINVAL;

 return 0;
}
