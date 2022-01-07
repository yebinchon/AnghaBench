
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_load_detect_pipe {struct drm_atomic_state* restore_state; } ;
struct TYPE_4__ {int id; } ;
struct drm_encoder {int name; TYPE_2__ base; } ;
struct intel_encoder {struct drm_encoder base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int,...) ;
 int drm_atomic_helper_commit_duplicated_state (struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 struct intel_encoder* intel_attached_encoder (struct drm_connector*) ;

void intel_release_load_detect_pipe(struct drm_connector *connector,
        struct intel_load_detect_pipe *old,
        struct drm_modeset_acquire_ctx *ctx)
{
 struct intel_encoder *intel_encoder =
  intel_attached_encoder(connector);
 struct drm_encoder *encoder = &intel_encoder->base;
 struct drm_atomic_state *state = old->restore_state;
 int ret;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
        connector->base.id, connector->name,
        encoder->base.id, encoder->name);

 if (!state)
  return;

 ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 if (ret)
  DRM_DEBUG_KMS("Couldn't release load detect pipe: %i\n", ret);
 drm_atomic_state_put(state);
}
