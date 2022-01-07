
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct intel_dvo {TYPE_2__* attached_connector; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int output_format; TYPE_3__ base; } ;
struct drm_connector_state {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode* fixed_mode; } ;
struct TYPE_5__ {TYPE_1__ panel; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int EINVAL ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 struct intel_dvo* enc_to_dvo (struct intel_encoder*) ;
 int intel_fixed_panel_mode (struct drm_display_mode const*,struct drm_display_mode*) ;

__attribute__((used)) static int intel_dvo_compute_config(struct intel_encoder *encoder,
        struct intel_crtc_state *pipe_config,
        struct drm_connector_state *conn_state)
{
 struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 const struct drm_display_mode *fixed_mode =
  intel_dvo->attached_connector->panel.fixed_mode;
 struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;







 if (fixed_mode)
  intel_fixed_panel_mode(fixed_mode, adjusted_mode);

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return -EINVAL;

 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;

 return 0;
}
