
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_config {TYPE_1__* funcs; } ;
struct drm_atomic_state {TYPE_2__* dev; } ;
struct TYPE_4__ {struct drm_mode_config mode_config; } ;
struct TYPE_3__ {int (* atomic_commit ) (TYPE_2__*,struct drm_atomic_state*,int) ;} ;


 int DRM_DEBUG_ATOMIC (char*,struct drm_atomic_state*) ;
 int drm_atomic_check_only (struct drm_atomic_state*) ;
 int stub1 (TYPE_2__*,struct drm_atomic_state*,int) ;

int drm_atomic_nonblocking_commit(struct drm_atomic_state *state)
{
 struct drm_mode_config *config = &state->dev->mode_config;
 int ret;

 ret = drm_atomic_check_only(state);
 if (ret)
  return ret;

 DRM_DEBUG_ATOMIC("committing %p nonblocking\n", state);

 return config->funcs->atomic_commit(state->dev, state, 1);
}
