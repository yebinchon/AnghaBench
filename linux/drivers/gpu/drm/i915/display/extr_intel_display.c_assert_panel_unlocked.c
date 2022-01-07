
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DP_A ;
 int HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ) ;
 int INVALID_PIPE ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int LVDS ;
 int MISSING_CASE (int) ;




 int PANEL_PORT_SELECT_MASK ;
 int PANEL_POWER_ON ;
 int PANEL_UNLOCK_MASK ;
 int PANEL_UNLOCK_REGS ;
 int PCH_DP_C ;
 int PCH_DP_D ;
 int PCH_LVDS ;
 int PORT_A ;
 int PORT_C ;
 int PORT_D ;
 int PP_CONTROL (int) ;
 int PP_ON_DELAYS (int ) ;
 scalar_t__ WARN_ON (int) ;
 int intel_dp_port_enabled (struct drm_i915_private*,int ,int ,int*) ;
 int intel_lvds_port_enabled (struct drm_i915_private*,int ,int*) ;
 int pipe_name (int) ;

void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 i915_reg_t pp_reg;
 u32 val;
 enum pipe panel_pipe = INVALID_PIPE;
 bool locked = 1;

 if (WARN_ON(HAS_DDI(dev_priv)))
  return;

 if (HAS_PCH_SPLIT(dev_priv)) {
  u32 port_sel;

  pp_reg = PP_CONTROL(0);
  port_sel = I915_READ(PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;

  switch (port_sel) {
  case 128:
   intel_lvds_port_enabled(dev_priv, PCH_LVDS, &panel_pipe);
   break;
  case 131:
   intel_dp_port_enabled(dev_priv, DP_A, PORT_A, &panel_pipe);
   break;
  case 130:
   intel_dp_port_enabled(dev_priv, PCH_DP_C, PORT_C, &panel_pipe);
   break;
  case 129:
   intel_dp_port_enabled(dev_priv, PCH_DP_D, PORT_D, &panel_pipe);
   break;
  default:
   MISSING_CASE(port_sel);
   break;
  }
 } else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {

  pp_reg = PP_CONTROL(pipe);
  panel_pipe = pipe;
 } else {
  u32 port_sel;

  pp_reg = PP_CONTROL(0);
  port_sel = I915_READ(PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;

  WARN_ON(port_sel != 128);
  intel_lvds_port_enabled(dev_priv, LVDS, &panel_pipe);
 }

 val = I915_READ(pp_reg);
 if (!(val & PANEL_POWER_ON) ||
     ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
  locked = 0;

 I915_STATE_WARN(panel_pipe == pipe && locked,
      "panel assertion failure, pipe %c regs locked\n",
      pipe_name(pipe));
}
