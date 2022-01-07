
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct intel_encoder {int (* get_config ) (struct intel_encoder*,struct intel_crtc_state*) ;int (* get_hw_state ) (struct intel_encoder*,int*) ;TYPE_3__ base; } ;
struct TYPE_4__ {int * crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int base; } ;
struct TYPE_5__ {int (* get_pipe_config ) (struct intel_crtc*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_display_mode {TYPE_1__ base; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int GFP_KERNEL ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int intel_mode_from_pipe_config (struct intel_crtc_state*,struct intel_crtc_state*) ;
 int kfree (struct intel_crtc_state*) ;
 struct intel_crtc_state* kzalloc (int,int ) ;
 int stub1 (struct intel_encoder*,int*) ;
 int stub2 (struct intel_crtc*,struct intel_crtc_state*) ;
 int stub3 (struct intel_encoder*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;

struct drm_display_mode *
intel_encoder_current_mode(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc_state *crtc_state;
 struct drm_display_mode *mode;
 struct intel_crtc *crtc;
 enum pipe pipe;

 if (!encoder->get_hw_state(encoder, &pipe))
  return ((void*)0);

 crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

 mode = kzalloc(sizeof(*mode), GFP_KERNEL);
 if (!mode)
  return ((void*)0);

 crtc_state = kzalloc(sizeof(*crtc_state), GFP_KERNEL);
 if (!crtc_state) {
  kfree(mode);
  return ((void*)0);
 }

 crtc_state->base.crtc = &crtc->base;

 if (!dev_priv->display.get_pipe_config(crtc, crtc_state)) {
  kfree(crtc_state);
  kfree(mode);
  return ((void*)0);
 }

 encoder->get_config(encoder, crtc_state);

 intel_mode_from_pipe_config(mode, crtc_state);

 kfree(crtc_state);

 return mode;
}
