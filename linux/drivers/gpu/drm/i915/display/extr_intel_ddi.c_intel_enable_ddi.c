
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {scalar_t__ content_protection; scalar_t__ hdcp_content_type; int connector; } ;


 scalar_t__ DRM_MODE_CONTENT_PROTECTION_DESIRED ;
 int INTEL_OUTPUT_HDMI ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_enable_ddi_dp (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_enable_ddi_hdmi (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_hdcp_enable (int ,int ) ;
 int to_intel_connector (int ) ;

__attribute__((used)) static void intel_enable_ddi(struct intel_encoder *encoder,
        const struct intel_crtc_state *crtc_state,
        const struct drm_connector_state *conn_state)
{
 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
  intel_enable_ddi_hdmi(encoder, crtc_state, conn_state);
 else
  intel_enable_ddi_dp(encoder, crtc_state, conn_state);


 if (conn_state->content_protection ==
     DRM_MODE_CONTENT_PROTECTION_DESIRED)
  intel_hdcp_enable(to_intel_connector(conn_state->connector),
      (u8)conn_state->hdcp_content_type);
}
