
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {struct drm_device* dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_object {scalar_t__ type; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {TYPE_2__* dev; struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_3__ {struct drm_property* dpms_property; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 scalar_t__ DRM_MODE_OBJECT_CONNECTOR ;
 int EDEADLK ;
 int EINVAL ;
 int ENOMEM ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 int drm_atomic_connector_commit_dpms (struct drm_atomic_state*,int ,int ) ;
 int drm_atomic_set_property (struct drm_atomic_state*,struct drm_file*,struct drm_mode_object*,struct drm_property*,int ) ;
 struct drm_atomic_state* drm_atomic_state_alloc (struct drm_device*) ;
 int drm_atomic_state_clear (struct drm_atomic_state*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 int obj_to_connector (struct drm_mode_object*) ;

__attribute__((used)) static int set_property_atomic(struct drm_mode_object *obj,
          struct drm_file *file_priv,
          struct drm_property *prop,
          uint64_t prop_value)
{
 struct drm_device *dev = prop->dev;
 struct drm_atomic_state *state;
 struct drm_modeset_acquire_ctx ctx;
 int ret;

 state = drm_atomic_state_alloc(dev);
 if (!state)
  return -ENOMEM;

 drm_modeset_acquire_init(&ctx, 0);
 state->acquire_ctx = &ctx;

retry:
 if (prop == state->dev->mode_config.dpms_property) {
  if (obj->type != DRM_MODE_OBJECT_CONNECTOR) {
   ret = -EINVAL;
   goto out;
  }

  ret = drm_atomic_connector_commit_dpms(state,
             obj_to_connector(obj),
             prop_value);
 } else {
  ret = drm_atomic_set_property(state, file_priv, obj, prop, prop_value);
  if (ret)
   goto out;
  ret = drm_atomic_commit(state);
 }
out:
 if (ret == -EDEADLK) {
  drm_atomic_state_clear(state);
  drm_modeset_backoff(&ctx);
  goto retry;
 }

 drm_atomic_state_put(state);

 drm_modeset_drop_locks(&ctx);
 drm_modeset_acquire_fini(&ctx);

 return ret;
}
