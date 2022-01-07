
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {int dummy; } ;
struct drm_atomic_helper_damage_iter {int full_update; size_t curr_clip; size_t num_clips; struct drm_rect plane_src; struct drm_rect* clips; } ;


 scalar_t__ drm_rect_intersect (struct drm_rect*,struct drm_rect*) ;

bool
drm_atomic_helper_damage_iter_next(struct drm_atomic_helper_damage_iter *iter,
       struct drm_rect *rect)
{
 bool ret = 0;

 if (iter->full_update) {
  *rect = iter->plane_src;
  iter->full_update = 0;
  return 1;
 }

 while (iter->curr_clip < iter->num_clips) {
  *rect = iter->clips[iter->curr_clip];
  iter->curr_clip++;

  if (drm_rect_intersect(rect, &iter->plane_src)) {
   ret = 1;
   break;
  }
 }

 return ret;
}
