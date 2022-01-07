
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_plane* primary; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {scalar_t__ type; int dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_intel_sprite_colorkey {int flags; int plane_id; } ;
struct drm_i915_private {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_4__ {scalar_t__ id; int pipe; } ;


 scalar_t__ DRM_PLANE_TYPE_OVERLAY ;
 int EDEADLK ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int I915_SET_COLORKEY_DESTINATION ;
 int I915_SET_COLORKEY_NONE ;
 int I915_SET_COLORKEY_SOURCE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 scalar_t__ PLANE_SPRITE1 ;
 int PTR_ERR_OR_ZERO (struct drm_plane_state*) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_plane_state* drm_atomic_get_plane_state (struct drm_atomic_state*,struct drm_plane*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (int ) ;
 int drm_atomic_state_clear (struct drm_atomic_state*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 struct drm_plane* drm_plane_find (struct drm_device*,struct drm_file*,int ) ;
 scalar_t__ has_dst_key_in_primary_plane (struct drm_i915_private*) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int ) ;
 int intel_plane_set_ckey (int ,struct drm_intel_sprite_colorkey*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 TYPE_2__* to_intel_plane (struct drm_plane*) ;
 int to_intel_plane_state (struct drm_plane_state*) ;

int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_intel_sprite_colorkey *set = data;
 struct drm_plane *plane;
 struct drm_plane_state *plane_state;
 struct drm_atomic_state *state;
 struct drm_modeset_acquire_ctx ctx;
 int ret = 0;


 set->flags &= ~I915_SET_COLORKEY_NONE;

 if (set->flags & ~(I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
  return -EINVAL;


 if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
  return -EINVAL;

 if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
     set->flags & I915_SET_COLORKEY_DESTINATION)
  return -EINVAL;

 plane = drm_plane_find(dev, file_priv, set->plane_id);
 if (!plane || plane->type != DRM_PLANE_TYPE_OVERLAY)
  return -ENOENT;






 if (INTEL_GEN(dev_priv) >= 9 &&
     to_intel_plane(plane)->id >= PLANE_SPRITE1 &&
     set->flags & I915_SET_COLORKEY_DESTINATION)
  return -EINVAL;

 drm_modeset_acquire_init(&ctx, 0);

 state = drm_atomic_state_alloc(plane->dev);
 if (!state) {
  ret = -ENOMEM;
  goto out;
 }
 state->acquire_ctx = &ctx;

 while (1) {
  plane_state = drm_atomic_get_plane_state(state, plane);
  ret = PTR_ERR_OR_ZERO(plane_state);
  if (!ret)
   intel_plane_set_ckey(to_intel_plane_state(plane_state), set);





  if (!ret && has_dst_key_in_primary_plane(dev_priv)) {
   struct intel_crtc *crtc =
    intel_get_crtc_for_pipe(dev_priv,
       to_intel_plane(plane)->pipe);

   plane_state = drm_atomic_get_plane_state(state,
         crtc->base.primary);
   ret = PTR_ERR_OR_ZERO(plane_state);
   if (!ret)
    intel_plane_set_ckey(to_intel_plane_state(plane_state), set);
  }

  if (!ret)
   ret = drm_atomic_commit(state);

  if (ret != -EDEADLK)
   break;

  drm_atomic_state_clear(state);
  drm_modeset_backoff(&ctx);
 }

 drm_atomic_state_put(state);
out:
 drm_modeset_drop_locks(&ctx);
 drm_modeset_acquire_fini(&ctx);
 return ret;
}
