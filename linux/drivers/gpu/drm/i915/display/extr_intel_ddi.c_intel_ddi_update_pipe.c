
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_hdcp {scalar_t__ content_type; int mutex; int prop_work; scalar_t__ value; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;
struct drm_connector_state {scalar_t__ hdcp_content_type; scalar_t__ content_protection; int connector; } ;


 scalar_t__ DRM_MODE_CONTENT_PROTECTION_DESIRED ;
 scalar_t__ DRM_MODE_CONTENT_PROTECTION_UNDESIRED ;
 int INTEL_OUTPUT_HDMI ;
 int intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_ddi_update_pipe_dp (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_hdcp_disable (struct intel_connector*) ;
 int intel_hdcp_enable (struct intel_connector*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void intel_ddi_update_pipe(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector =
    to_intel_connector(conn_state->connector);
 struct intel_hdcp *hdcp = &connector->hdcp;
 bool content_protection_type_changed =
   (conn_state->hdcp_content_type != hdcp->content_type &&
    conn_state->content_protection !=
    DRM_MODE_CONTENT_PROTECTION_UNDESIRED);

 if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
  intel_ddi_update_pipe_dp(encoder, crtc_state, conn_state);





 if (conn_state->content_protection ==
     DRM_MODE_CONTENT_PROTECTION_UNDESIRED ||
     content_protection_type_changed)
  intel_hdcp_disable(connector);





 if (content_protection_type_changed) {
  mutex_lock(&hdcp->mutex);
  hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
  schedule_work(&hdcp->prop_work);
  mutex_unlock(&hdcp->mutex);
 }

 if (conn_state->content_protection ==
     DRM_MODE_CONTENT_PROTECTION_DESIRED ||
     content_protection_type_changed)
  intel_hdcp_enable(connector, (u8)conn_state->hdcp_content_type);
}
