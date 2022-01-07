
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct drm_private_obj {int state; } ;
struct dm_atomic_state {struct drm_private_state base; scalar_t__ context; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_private_obj_duplicate_state (struct drm_private_obj*,struct drm_private_state*) ;
 scalar_t__ dc_copy_state (scalar_t__) ;
 int kfree (struct dm_atomic_state*) ;
 struct dm_atomic_state* kzalloc (int,int ) ;
 struct dm_atomic_state* to_dm_atomic_state (int ) ;

__attribute__((used)) static struct drm_private_state *
dm_atomic_duplicate_state(struct drm_private_obj *obj)
{
 struct dm_atomic_state *old_state, *new_state;

 new_state = kzalloc(sizeof(*new_state), GFP_KERNEL);
 if (!new_state)
  return ((void*)0);

 __drm_atomic_helper_private_obj_duplicate_state(obj, &new_state->base);

 old_state = to_dm_atomic_state(obj->state);

 if (old_state && old_state->context)
  new_state->context = dc_copy_state(old_state->context);

 if (!new_state->context) {
  kfree(new_state);
  return ((void*)0);
 }

 return &new_state->base;
}
