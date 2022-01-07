
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline_state {int dummy; } ;
struct komeda_pipeline {int obj; } ;
struct drm_private_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 struct komeda_pipeline_state* ERR_CAST (struct drm_private_state*) ;
 scalar_t__ IS_ERR (struct drm_private_state*) ;
 struct drm_private_state* drm_atomic_get_private_obj_state (struct drm_atomic_state*,int *) ;
 struct komeda_pipeline_state* priv_to_pipe_st (struct drm_private_state*) ;

__attribute__((used)) static struct komeda_pipeline_state *
komeda_pipeline_get_state(struct komeda_pipeline *pipe,
     struct drm_atomic_state *state)
{
 struct drm_private_state *priv_st;

 priv_st = drm_atomic_get_private_obj_state(state, &pipe->obj);
 if (IS_ERR(priv_st))
  return ERR_CAST(priv_st);

 return priv_to_pipe_st(priv_st);
}
