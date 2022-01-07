
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_private_state_funcs {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_private_obj {int head; struct drm_private_state_funcs const* funcs; struct drm_private_state* state; int lock; } ;
struct TYPE_2__ {int privobj_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_modeset_lock_init (int *) ;
 int list_add_tail (int *,int *) ;
 int memset (struct drm_private_obj*,int ,int) ;

void
drm_atomic_private_obj_init(struct drm_device *dev,
       struct drm_private_obj *obj,
       struct drm_private_state *state,
       const struct drm_private_state_funcs *funcs)
{
 memset(obj, 0, sizeof(*obj));

 drm_modeset_lock_init(&obj->lock);

 obj->state = state;
 obj->funcs = funcs;
 list_add_tail(&obj->head, &dev->mode_config.privobj_list);
}
