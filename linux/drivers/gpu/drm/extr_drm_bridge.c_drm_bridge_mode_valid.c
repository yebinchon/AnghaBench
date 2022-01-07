
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct drm_bridge {struct drm_bridge* next; TYPE_1__* funcs; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int (* mode_valid ) (struct drm_bridge*,struct drm_display_mode const*) ;} ;


 int MODE_OK ;
 int stub1 (struct drm_bridge*,struct drm_display_mode const*) ;

enum drm_mode_status drm_bridge_mode_valid(struct drm_bridge *bridge,
        const struct drm_display_mode *mode)
{
 enum drm_mode_status ret = MODE_OK;

 if (!bridge)
  return ret;

 if (bridge->funcs->mode_valid)
  ret = bridge->funcs->mode_valid(bridge, mode);

 if (ret != MODE_OK)
  return ret;

 return drm_bridge_mode_valid(bridge->next, mode);
}
