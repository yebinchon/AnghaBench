
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ visible; scalar_t__ rotation; int dst; int src; TYPE_1__* fb; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {scalar_t__ modifier; } ;


 scalar_t__ drm_rect_height (int *) ;
 scalar_t__ drm_rect_width (int *) ;

__attribute__((used)) static bool intel_wm_need_update(const struct intel_plane_state *cur,
     struct intel_plane_state *new)
{

 if (new->base.visible != cur->base.visible)
  return 1;

 if (!cur->base.fb || !new->base.fb)
  return 0;

 if (cur->base.fb->modifier != new->base.fb->modifier ||
     cur->base.rotation != new->base.rotation ||
     drm_rect_width(&new->base.src) != drm_rect_width(&cur->base.src) ||
     drm_rect_height(&new->base.src) != drm_rect_height(&cur->base.src) ||
     drm_rect_width(&new->base.dst) != drm_rect_width(&cur->base.dst) ||
     drm_rect_height(&new->base.dst) != drm_rect_height(&cur->base.dst))
  return 1;

 return 0;
}
