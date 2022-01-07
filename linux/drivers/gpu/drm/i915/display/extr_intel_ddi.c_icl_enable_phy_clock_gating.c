
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef enum port { ____Placeholder_port } port ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MG_DP_MODE (int,int) ;
 int MG_DP_MODE_CFG_CLNPWR_GATING ;
 int MG_DP_MODE_CFG_DIGPWR_GATING ;
 int MG_DP_MODE_CFG_GAONPWR_GATING ;
 int MG_DP_MODE_CFG_TR2PWR_GATING ;
 int MG_DP_MODE_CFG_TRPWR_GATING ;
 int MG_MISC_SUS0 (int) ;
 int MG_MISC_SUS0_CFG_CL1PWR_GATING ;
 int MG_MISC_SUS0_CFG_CL2PWR_GATING ;
 int MG_MISC_SUS0_CFG_DGPWR_GATING ;
 int MG_MISC_SUS0_CFG_GAONPWR_GATING ;
 int MG_MISC_SUS0_CFG_TR2PWR_GATING ;
 int MG_MISC_SUS0_CFG_TRPWR_GATING ;
 int MG_MISC_SUS0_SUSCLK_DYNCLKGATE_MODE (int) ;
 int PORT_TC_NONE ;
 int intel_port_to_tc (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_enable_phy_clock_gating(struct intel_digital_port *dig_port)
{
 struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 enum port port = dig_port->base.port;
 enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
 u32 val;
 int ln;

 if (tc_port == PORT_TC_NONE)
  return;

 for (ln = 0; ln < 2; ln++) {
  val = I915_READ(MG_DP_MODE(ln, port));
  val |= MG_DP_MODE_CFG_TR2PWR_GATING |
         MG_DP_MODE_CFG_TRPWR_GATING |
         MG_DP_MODE_CFG_CLNPWR_GATING |
         MG_DP_MODE_CFG_DIGPWR_GATING |
         MG_DP_MODE_CFG_GAONPWR_GATING;
  I915_WRITE(MG_DP_MODE(ln, port), val);
 }

 val = I915_READ(MG_MISC_SUS0(tc_port));
 val |= MG_MISC_SUS0_SUSCLK_DYNCLKGATE_MODE(3) |
        MG_MISC_SUS0_CFG_TR2PWR_GATING |
        MG_MISC_SUS0_CFG_CL2PWR_GATING |
        MG_MISC_SUS0_CFG_GAONPWR_GATING |
        MG_MISC_SUS0_CFG_TRPWR_GATING |
        MG_MISC_SUS0_CFG_CL1PWR_GATING |
        MG_MISC_SUS0_CFG_DGPWR_GATING;
 I915_WRITE(MG_MISC_SUS0(tc_port), val);
}
