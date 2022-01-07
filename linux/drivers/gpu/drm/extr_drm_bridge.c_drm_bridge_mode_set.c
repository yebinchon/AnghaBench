
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct drm_bridge {struct drm_bridge* next; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* mode_set ) (struct drm_bridge*,struct drm_display_mode const*,struct drm_display_mode const*) ;} ;


 int stub1 (struct drm_bridge*,struct drm_display_mode const*,struct drm_display_mode const*) ;

void drm_bridge_mode_set(struct drm_bridge *bridge,
    const struct drm_display_mode *mode,
    const struct drm_display_mode *adjusted_mode)
{
 if (!bridge)
  return;

 if (bridge->funcs->mode_set)
  bridge->funcs->mode_set(bridge, mode, adjusted_mode);

 drm_bridge_mode_set(bridge->next, mode, adjusted_mode);
}
