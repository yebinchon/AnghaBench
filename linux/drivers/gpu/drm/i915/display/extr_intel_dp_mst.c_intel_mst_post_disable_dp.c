
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int base; } ;
struct intel_dp_mst_encoder {int * connector; struct intel_digital_port* primary; } ;
struct intel_dp {scalar_t__ active_mst_links; int mst_mgr; } ;
struct TYPE_2__ {int (* post_disable ) (TYPE_1__*,struct intel_crtc_state const*,int *) ;} ;
struct intel_digital_port {TYPE_1__ base; struct intel_dp dp; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_connector {int port; } ;
struct drm_connector_state {int connector; } ;


 int DRM_DEBUG_KMS (char*,scalar_t__) ;
 int DRM_MODE_DPMS_OFF ;
 int drm_dp_check_act_status (int *) ;
 int drm_dp_mst_deallocate_vcpi (int *,int ) ;
 int drm_dp_send_power_updown_phy (int *,int ,int) ;
 int drm_dp_update_payload_part2 (int *) ;
 struct intel_dp_mst_encoder* enc_to_mst (int *) ;
 int intel_ddi_disable_pipe_clock (struct intel_crtc_state const*) ;
 int intel_dp_sink_dpms (struct intel_dp*,int ) ;
 int stub1 (TYPE_1__*,struct intel_crtc_state const*,int *) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
          const struct intel_crtc_state *old_crtc_state,
          const struct drm_connector_state *old_conn_state)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 struct intel_digital_port *intel_dig_port = intel_mst->primary;
 struct intel_dp *intel_dp = &intel_dig_port->dp;
 struct intel_connector *connector =
  to_intel_connector(old_conn_state->connector);

 intel_ddi_disable_pipe_clock(old_crtc_state);


 drm_dp_check_act_status(&intel_dp->mst_mgr);

 drm_dp_update_payload_part2(&intel_dp->mst_mgr);

 drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);





 drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port,
         0);

 intel_dp->active_mst_links--;

 intel_mst->connector = ((void*)0);
 if (intel_dp->active_mst_links == 0) {
  intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_OFF);
  intel_dig_port->base.post_disable(&intel_dig_port->base,
        old_crtc_state, ((void*)0));
 }

 DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
}
