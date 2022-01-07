
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int PCH_DP_B ;
 int PCH_DP_C ;
 int PCH_DP_D ;
 int PCH_HDMIB ;
 int PCH_HDMIC ;
 int PCH_HDMID ;
 int PORT_B ;
 int PORT_C ;
 int PORT_D ;
 int ibx_sanitize_pch_dp_port (struct drm_i915_private*,int ,int ) ;
 int ibx_sanitize_pch_hdmi_port (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
{
 ibx_sanitize_pch_dp_port(dev_priv, PORT_B, PCH_DP_B);
 ibx_sanitize_pch_dp_port(dev_priv, PORT_C, PCH_DP_C);
 ibx_sanitize_pch_dp_port(dev_priv, PORT_D, PCH_DP_D);


 ibx_sanitize_pch_hdmi_port(dev_priv, PORT_B, PCH_HDMIB);
 ibx_sanitize_pch_hdmi_port(dev_priv, PORT_C, PCH_HDMIC);
 ibx_sanitize_pch_hdmi_port(dev_priv, PORT_D, PCH_HDMID);
}
