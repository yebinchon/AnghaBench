
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_load_tracker_state {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;


 int kfree (struct vc4_load_tracker_state*) ;
 struct vc4_load_tracker_state* to_vc4_load_tracker_state (struct drm_private_state*) ;

__attribute__((used)) static void vc4_load_tracker_destroy_state(struct drm_private_obj *obj,
        struct drm_private_state *state)
{
 struct vc4_load_tracker_state *load_state;

 load_state = to_vc4_load_tracker_state(state);
 kfree(load_state);
}
