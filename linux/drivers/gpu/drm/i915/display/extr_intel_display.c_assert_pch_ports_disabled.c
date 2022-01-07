
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_STATE_WARN (int,char*,int ) ;
 int PCH_ADPA ;
 int PCH_DP_B ;
 int PCH_DP_C ;
 int PCH_DP_D ;
 int PCH_HDMIB ;
 int PCH_HDMIC ;
 int PCH_HDMID ;
 int PCH_LVDS ;
 int PORT_B ;
 int PORT_C ;
 int PORT_D ;
 int assert_pch_dp_disabled (struct drm_i915_private*,int,int ,int ) ;
 int assert_pch_hdmi_disabled (struct drm_i915_private*,int,int ,int ) ;
 scalar_t__ intel_crt_port_enabled (struct drm_i915_private*,int ,int*) ;
 scalar_t__ intel_lvds_port_enabled (struct drm_i915_private*,int ,int*) ;
 int pipe_name (int) ;

__attribute__((used)) static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 enum pipe port_pipe;

 assert_pch_dp_disabled(dev_priv, pipe, PORT_B, PCH_DP_B);
 assert_pch_dp_disabled(dev_priv, pipe, PORT_C, PCH_DP_C);
 assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);

 I915_STATE_WARN(intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) &&
   port_pipe == pipe,
   "PCH VGA enabled on transcoder %c, should be disabled\n",
   pipe_name(pipe));

 I915_STATE_WARN(intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) &&
   port_pipe == pipe,
   "PCH LVDS enabled on transcoder %c, should be disabled\n",
   pipe_name(pipe));


 assert_pch_hdmi_disabled(dev_priv, pipe, PORT_B, PCH_HDMIB);
 assert_pch_hdmi_disabled(dev_priv, pipe, PORT_C, PCH_HDMIC);
 assert_pch_hdmi_disabled(dev_priv, pipe, PORT_D, PCH_HDMID);
}
