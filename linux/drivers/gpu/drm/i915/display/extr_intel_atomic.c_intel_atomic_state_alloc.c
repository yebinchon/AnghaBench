
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_atomic_state {int dummy; } ;
struct intel_atomic_state {struct drm_atomic_state base; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ drm_atomic_state_init (struct drm_device*,struct drm_atomic_state*) ;
 int kfree (struct intel_atomic_state*) ;
 struct intel_atomic_state* kzalloc (int,int ) ;

struct drm_atomic_state *
intel_atomic_state_alloc(struct drm_device *dev)
{
 struct intel_atomic_state *state = kzalloc(sizeof(*state), GFP_KERNEL);

 if (!state || drm_atomic_state_init(dev, &state->base) < 0) {
  kfree(state);
  return ((void*)0);
 }

 return &state->base;
}
