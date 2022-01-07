
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int I915_STATE_WARN (int,char*,int ,...) ;
 int PIPE_B ;
 int intel_sdvo_port_enabled (struct drm_i915_private*,int ,int*) ;
 int pipe_name (int) ;
 int port_name (int) ;

__attribute__((used)) static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
         enum pipe pipe, enum port port,
         i915_reg_t hdmi_reg)
{
 enum pipe port_pipe;
 bool state;

 state = intel_sdvo_port_enabled(dev_priv, hdmi_reg, &port_pipe);

 I915_STATE_WARN(state && port_pipe == pipe,
   "PCH HDMI %c enabled on transcoder %c, should be disabled\n",
   port_name(port), pipe_name(pipe));

 I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
   "IBX PCH HDMI %c still using transcoder B\n",
   port_name(port));
}
