
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;


 int kfree (int ) ;
 int priv_to_pipe_st (struct drm_private_state*) ;

__attribute__((used)) static void
komeda_pipeline_atomic_destroy_state(struct drm_private_obj *obj,
         struct drm_private_state *state)
{
 kfree(priv_to_pipe_st(state));
}
