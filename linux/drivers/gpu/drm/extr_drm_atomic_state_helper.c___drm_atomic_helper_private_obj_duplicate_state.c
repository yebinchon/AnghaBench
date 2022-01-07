
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct drm_private_obj {int state; } ;


 int memcpy (struct drm_private_state*,int ,int) ;

void __drm_atomic_helper_private_obj_duplicate_state(struct drm_private_obj *obj,
           struct drm_private_state *state)
{
 memcpy(state, obj->state, sizeof(*state));
}
