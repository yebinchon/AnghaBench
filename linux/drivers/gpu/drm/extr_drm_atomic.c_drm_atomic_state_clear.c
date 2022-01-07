
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_config {TYPE_1__* funcs; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
struct TYPE_2__ {int (* atomic_state_clear ) (struct drm_atomic_state*) ;} ;


 int drm_atomic_state_default_clear (struct drm_atomic_state*) ;
 int stub1 (struct drm_atomic_state*) ;

void drm_atomic_state_clear(struct drm_atomic_state *state)
{
 struct drm_device *dev = state->dev;
 struct drm_mode_config *config = &dev->mode_config;

 if (config->funcs->atomic_state_clear)
  config->funcs->atomic_state_clear(state);
 else
  drm_atomic_state_default_clear(state);
}
