
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;


 int kfree (int ) ;
 int priv_to_comp_st (struct drm_private_state*) ;
 int to_scaler_st (int ) ;

__attribute__((used)) static void
komeda_scaler_atomic_destroy_state(struct drm_private_obj *obj,
       struct drm_private_state *state)
{
 kfree(to_scaler_st(priv_to_comp_st(state)));
}
