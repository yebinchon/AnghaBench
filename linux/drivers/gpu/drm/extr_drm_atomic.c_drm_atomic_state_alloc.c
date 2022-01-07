
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_config {TYPE_1__* funcs; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {struct drm_atomic_state* (* atomic_state_alloc ) (struct drm_device*) ;} ;


 int GFP_KERNEL ;
 scalar_t__ drm_atomic_state_init (struct drm_device*,struct drm_atomic_state*) ;
 int kfree (struct drm_atomic_state*) ;
 struct drm_atomic_state* kzalloc (int,int ) ;
 struct drm_atomic_state* stub1 (struct drm_device*) ;

struct drm_atomic_state *
drm_atomic_state_alloc(struct drm_device *dev)
{
 struct drm_mode_config *config = &dev->mode_config;

 if (!config->funcs->atomic_state_alloc) {
  struct drm_atomic_state *state;

  state = kzalloc(sizeof(*state), GFP_KERNEL);
  if (!state)
   return ((void*)0);
  if (drm_atomic_state_init(dev, state) < 0) {
   kfree(state);
   return ((void*)0);
  }
  return state;
 }

 return config->funcs->atomic_state_alloc(dev);
}
