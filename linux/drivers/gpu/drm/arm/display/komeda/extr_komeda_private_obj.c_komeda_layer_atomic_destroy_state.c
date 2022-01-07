
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_layer_state {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;


 int kfree (struct komeda_layer_state*) ;
 int priv_to_comp_st (struct drm_private_state*) ;
 struct komeda_layer_state* to_layer_st (int ) ;

__attribute__((used)) static void
komeda_layer_atomic_destroy_state(struct drm_private_obj *obj,
      struct drm_private_state *state)
{
 struct komeda_layer_state *st = to_layer_st(priv_to_comp_st(state));

 kfree(st);
}
