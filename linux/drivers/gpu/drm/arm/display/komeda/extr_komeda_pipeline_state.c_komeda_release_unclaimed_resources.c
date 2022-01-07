
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_pipeline_state {int dummy; } ;
struct komeda_pipeline {int id; } ;
struct TYPE_2__ {struct drm_atomic_state* state; } ;
struct komeda_crtc_state {int active_pipes; int affected_pipes; TYPE_1__ base; } ;
struct drm_atomic_state {int dummy; } ;


 int EINVAL ;
 int IS_ERR_OR_NULL (struct komeda_pipeline_state*) ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ has_bit (int ,int ) ;
 struct komeda_pipeline_state* komeda_pipeline_get_new_state (struct komeda_pipeline*,struct drm_atomic_state*) ;
 struct komeda_pipeline_state* komeda_pipeline_get_state_and_set_crtc (struct komeda_pipeline*,struct drm_atomic_state*,int *) ;
 int komeda_pipeline_unbound_components (struct komeda_pipeline*,struct komeda_pipeline_state*) ;

int komeda_release_unclaimed_resources(struct komeda_pipeline *pipe,
           struct komeda_crtc_state *kcrtc_st)
{
 struct drm_atomic_state *drm_st = kcrtc_st->base.state;
 struct komeda_pipeline_state *st;


 if (!pipe || !has_bit(pipe->id, kcrtc_st->affected_pipes))
  return 0;

 if (has_bit(pipe->id, kcrtc_st->active_pipes))
  st = komeda_pipeline_get_new_state(pipe, drm_st);
 else
  st = komeda_pipeline_get_state_and_set_crtc(pipe, drm_st, ((void*)0));

 if (WARN_ON(IS_ERR_OR_NULL(st)))
  return -EINVAL;

 komeda_pipeline_unbound_components(pipe, st);

 return 0;
}
