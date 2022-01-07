
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ crtc; } ;
struct intel_encoder {scalar_t__ type; TYPE_4__ base; } ;
struct TYPE_7__ {scalar_t__ active; } ;
struct intel_crtc_state {TYPE_3__ base; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {int name; TYPE_1__ base; } ;
struct intel_connector {struct intel_encoder* encoder; scalar_t__ (* get_hw_state ) (struct intel_connector*) ;TYPE_2__ base; } ;
struct drm_connector_state {scalar_t__ crtc; TYPE_4__* best_encoder; int connector; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int I915_STATE_WARN (int,char*) ;
 scalar_t__ INTEL_OUTPUT_DP_MST ;
 scalar_t__ stub1 (struct intel_connector*) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
      struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.base.id,
        connector->base.name);

 if (connector->get_hw_state(connector)) {
  struct intel_encoder *encoder = connector->encoder;

  I915_STATE_WARN(!crtc_state,
    "connector enabled without attached crtc\n");

  if (!crtc_state)
   return;

  I915_STATE_WARN(!crtc_state->base.active,
        "connector is active, but attached crtc isn't\n");

  if (!encoder || encoder->type == INTEL_OUTPUT_DP_MST)
   return;

  I915_STATE_WARN(conn_state->best_encoder != &encoder->base,
   "atomic encoder doesn't match attached encoder\n");

  I915_STATE_WARN(conn_state->crtc != encoder->base.crtc,
   "attached encoder crtc differs from connector crtc\n");
 } else {
  I915_STATE_WARN(crtc_state && crtc_state->base.active,
   "attached crtc is active, but connector isn't\n");
  I915_STATE_WARN(!crtc_state && conn_state->best_encoder,
   "best encoder set without crtc!\n");
 }
}
