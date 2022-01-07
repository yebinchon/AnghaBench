
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_digital_port {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 int intel_ddi_main_link_aux_domain (struct intel_digital_port*) ;
 int intel_display_power_put_unchecked (struct drm_i915_private*,int ) ;
 int intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 int intel_tc_port_put_link (struct intel_digital_port*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
intel_ddi_post_pll_disable(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 bool is_tc_port = intel_phy_is_tc(dev_priv, phy);

 if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port)
  intel_display_power_put_unchecked(dev_priv,
        intel_ddi_main_link_aux_domain(dig_port));

 if (is_tc_port)
  intel_tc_port_put_link(dig_port);
}
