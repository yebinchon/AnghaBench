
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_private_state {struct drm_atomic_state* state; } ;
struct drm_private_obj {int state; TYPE_1__* funcs; int lock; } ;
struct drm_atomic_state {int num_private_objs; struct __drm_private_objs_state* private_objs; int acquire_ctx; } ;
struct __drm_private_objs_state {struct drm_private_obj* ptr; struct drm_private_state* new_state; int old_state; struct drm_private_state* state; } ;
struct TYPE_2__ {struct drm_private_state* (* atomic_duplicate_state ) (struct drm_private_obj*) ;} ;


 int DRM_DEBUG_ATOMIC (char*,struct drm_private_obj*,struct drm_private_state*,struct drm_atomic_state*) ;
 int ENOMEM ;
 struct drm_private_state* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_modeset_lock (int *,int ) ;
 struct __drm_private_objs_state* krealloc (struct __drm_private_objs_state*,size_t,int ) ;
 int memset (struct __drm_private_objs_state*,int ,int) ;
 struct drm_private_state* stub1 (struct drm_private_obj*) ;

struct drm_private_state *
drm_atomic_get_private_obj_state(struct drm_atomic_state *state,
     struct drm_private_obj *obj)
{
 int index, num_objs, i, ret;
 size_t size;
 struct __drm_private_objs_state *arr;
 struct drm_private_state *obj_state;

 for (i = 0; i < state->num_private_objs; i++)
  if (obj == state->private_objs[i].ptr)
   return state->private_objs[i].state;

 ret = drm_modeset_lock(&obj->lock, state->acquire_ctx);
 if (ret)
  return ERR_PTR(ret);

 num_objs = state->num_private_objs + 1;
 size = sizeof(*state->private_objs) * num_objs;
 arr = krealloc(state->private_objs, size, GFP_KERNEL);
 if (!arr)
  return ERR_PTR(-ENOMEM);

 state->private_objs = arr;
 index = state->num_private_objs;
 memset(&state->private_objs[index], 0, sizeof(*state->private_objs));

 obj_state = obj->funcs->atomic_duplicate_state(obj);
 if (!obj_state)
  return ERR_PTR(-ENOMEM);

 state->private_objs[index].state = obj_state;
 state->private_objs[index].old_state = obj->state;
 state->private_objs[index].new_state = obj_state;
 state->private_objs[index].ptr = obj;
 obj_state->state = state;

 state->num_private_objs = num_objs;

 DRM_DEBUG_ATOMIC("Added new private object %p state %p to %p\n",
    obj, obj_state, state);

 return obj_state;
}
