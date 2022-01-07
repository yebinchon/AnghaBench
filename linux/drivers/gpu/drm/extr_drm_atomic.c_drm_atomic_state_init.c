
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_total_plane; int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_atomic_state {int allow_modeset; struct drm_device* dev; void* planes; void* crtcs; int ref; } ;


 int DRM_DEBUG_ATOMIC (char*,struct drm_atomic_state*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_atomic_state_default_release (struct drm_atomic_state*) ;
 void* kcalloc (int ,int,int ) ;
 int kref_init (int *) ;

int
drm_atomic_state_init(struct drm_device *dev, struct drm_atomic_state *state)
{
 kref_init(&state->ref);




 state->allow_modeset = 1;

 state->crtcs = kcalloc(dev->mode_config.num_crtc,
          sizeof(*state->crtcs), GFP_KERNEL);
 if (!state->crtcs)
  goto fail;
 state->planes = kcalloc(dev->mode_config.num_total_plane,
    sizeof(*state->planes), GFP_KERNEL);
 if (!state->planes)
  goto fail;

 state->dev = dev;

 DRM_DEBUG_ATOMIC("Allocated atomic state %p\n", state);

 return 0;
fail:
 drm_atomic_state_default_release(state);
 return -ENOMEM;
}
