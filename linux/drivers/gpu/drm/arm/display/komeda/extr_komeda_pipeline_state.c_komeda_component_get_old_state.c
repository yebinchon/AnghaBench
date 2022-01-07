
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_component_state {int dummy; } ;
struct komeda_component {int obj; } ;
struct drm_private_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 struct drm_private_state* drm_atomic_get_old_private_obj_state (struct drm_atomic_state*,int *) ;
 struct komeda_component_state* priv_to_comp_st (struct drm_private_state*) ;

__attribute__((used)) static struct komeda_component_state *
komeda_component_get_old_state(struct komeda_component *c,
          struct drm_atomic_state *state)
{
 struct drm_private_state *priv_st;

 priv_st = drm_atomic_get_old_private_obj_state(state, &c->obj);
 if (priv_st)
  return priv_to_comp_st(priv_st);
 return ((void*)0);
}
