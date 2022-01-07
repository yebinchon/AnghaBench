
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int output_format; TYPE_1__ base; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int EINVAL ;
 int INTEL_OUTPUT_FORMAT_RGB ;

__attribute__((used)) static int intel_crt_compute_config(struct intel_encoder *encoder,
        struct intel_crtc_state *pipe_config,
        struct drm_connector_state *conn_state)
{
 struct drm_display_mode *adjusted_mode =
  &pipe_config->base.adjusted_mode;

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return -EINVAL;

 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;

 return 0;
}
