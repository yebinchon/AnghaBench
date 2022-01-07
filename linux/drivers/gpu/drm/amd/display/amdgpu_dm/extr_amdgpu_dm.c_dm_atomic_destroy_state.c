
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;
struct dm_atomic_state {scalar_t__ context; } ;


 int dc_release_state (scalar_t__) ;
 int kfree (struct dm_atomic_state*) ;
 struct dm_atomic_state* to_dm_atomic_state (struct drm_private_state*) ;

__attribute__((used)) static void dm_atomic_destroy_state(struct drm_private_obj *obj,
        struct drm_private_state *state)
{
 struct dm_atomic_state *dm_state = to_dm_atomic_state(state);

 if (dm_state && dm_state->context)
  dc_release_state(dm_state->context);

 kfree(dm_state);
}
