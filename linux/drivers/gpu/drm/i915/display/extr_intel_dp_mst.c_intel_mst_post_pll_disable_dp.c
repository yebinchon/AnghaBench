
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_dp {scalar_t__ active_mst_links; } ;
struct TYPE_2__ {int (* post_pll_disable ) (TYPE_1__*,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct intel_digital_port {TYPE_1__ base; struct intel_dp dp; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 struct intel_dp_mst_encoder* enc_to_mst (int *) ;
 int stub1 (TYPE_1__*,struct intel_crtc_state const*,struct drm_connector_state const*) ;

__attribute__((used)) static void intel_mst_post_pll_disable_dp(struct intel_encoder *encoder,
       const struct intel_crtc_state *old_crtc_state,
       const struct drm_connector_state *old_conn_state)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 struct intel_digital_port *intel_dig_port = intel_mst->primary;
 struct intel_dp *intel_dp = &intel_dig_port->dp;

 if (intel_dp->active_mst_links == 0)
  intel_dig_port->base.post_pll_disable(&intel_dig_port->base,
            old_crtc_state,
            old_conn_state);
}
