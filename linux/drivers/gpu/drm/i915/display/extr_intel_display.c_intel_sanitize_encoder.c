
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
struct drm_encoder {int * crtc; int name; TYPE_3__ base; int dev; } ;
struct intel_encoder {struct drm_encoder base; int (* post_disable ) (struct intel_encoder*,struct intel_crtc_state*,TYPE_5__*) ;int (* disable ) (struct intel_encoder*,struct intel_crtc_state*,TYPE_5__*) ;} ;
struct TYPE_8__ {scalar_t__ active; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_7__ {int state; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct TYPE_10__ {int * encoder; int dpms; TYPE_5__* state; } ;
struct intel_connector {TYPE_4__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_11__ {struct drm_encoder* best_encoder; } ;


 int DRM_DEBUG_KMS (char*,int ,...) ;
 int DRM_MODE_DPMS_OFF ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ has_bogus_dpll_config (struct intel_crtc_state*) ;
 int icl_sanitize_encoder_pll_mapping (struct intel_encoder*) ;
 struct intel_connector* intel_encoder_find_connector (struct intel_encoder*) ;
 int intel_opregion_notify_encoder (struct intel_encoder*,int ) ;
 int pipe_name (int ) ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state*,TYPE_5__*) ;
 int stub2 (struct intel_encoder*,struct intel_crtc_state*,TYPE_5__*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int *) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;

__attribute__((used)) static void intel_sanitize_encoder(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_connector *connector;
 struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
 struct intel_crtc_state *crtc_state = crtc ?
  to_intel_crtc_state(crtc->base.state) : ((void*)0);




 bool has_active_crtc = crtc_state &&
  crtc_state->base.active;

 if (crtc_state && has_bogus_dpll_config(crtc_state)) {
  DRM_DEBUG_KMS("BIOS has misprogrammed the hardware. Disabling pipe %c\n",
         pipe_name(crtc->pipe));
  has_active_crtc = 0;
 }

 connector = intel_encoder_find_connector(encoder);
 if (connector && !has_active_crtc) {
  DRM_DEBUG_KMS("[ENCODER:%d:%s] has active connectors but no active pipe!\n",
         encoder->base.base.id,
         encoder->base.name);




  if (crtc_state) {
   struct drm_encoder *best_encoder;

   DRM_DEBUG_KMS("[ENCODER:%d:%s] manually disabled\n",
          encoder->base.base.id,
          encoder->base.name);


   best_encoder = connector->base.state->best_encoder;
   connector->base.state->best_encoder = &encoder->base;

   if (encoder->disable)
    encoder->disable(encoder, crtc_state,
       connector->base.state);
   if (encoder->post_disable)
    encoder->post_disable(encoder, crtc_state,
            connector->base.state);

   connector->base.state->best_encoder = best_encoder;
  }
  encoder->base.crtc = ((void*)0);






  connector->base.dpms = DRM_MODE_DPMS_OFF;
  connector->base.encoder = ((void*)0);
 }


 intel_opregion_notify_encoder(encoder, connector && has_active_crtc);

 if (INTEL_GEN(dev_priv) >= 11)
  icl_sanitize_encoder_pll_mapping(encoder);
}
