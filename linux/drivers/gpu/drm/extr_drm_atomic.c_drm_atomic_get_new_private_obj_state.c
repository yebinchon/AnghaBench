
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;
struct drm_atomic_state {int num_private_objs; TYPE_1__* private_objs; } ;
struct TYPE_2__ {struct drm_private_state* new_state; struct drm_private_obj* ptr; } ;



struct drm_private_state *
drm_atomic_get_new_private_obj_state(struct drm_atomic_state *state,
         struct drm_private_obj *obj)
{
 int i;

 for (i = 0; i < state->num_private_objs; i++)
  if (obj == state->private_objs[i].ptr)
   return state->private_objs[i].new_state;

 return ((void*)0);
}
