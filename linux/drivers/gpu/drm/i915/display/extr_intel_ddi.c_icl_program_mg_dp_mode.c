
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {int tc_mode; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MG_DP_MODE (int,int) ;
 int MG_DP_MODE_CFG_DP_X1_MODE ;
 int MG_DP_MODE_CFG_DP_X2_MODE ;
 int MISSING_CASE (int) ;


 int TC_PORT_TBT_ALT ;
 int intel_tc_port_get_lane_mask (struct intel_digital_port*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_program_mg_dp_mode(struct intel_digital_port *intel_dig_port)
{
 struct drm_i915_private *dev_priv = to_i915(intel_dig_port->base.base.dev);
 enum port port = intel_dig_port->base.port;
 u32 ln0, ln1, lane_mask;

 if (intel_dig_port->tc_mode == TC_PORT_TBT_ALT)
  return;

 ln0 = I915_READ(MG_DP_MODE(0, port));
 ln1 = I915_READ(MG_DP_MODE(1, port));

 switch (intel_dig_port->tc_mode) {
 case 129:
  ln0 &= ~(MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE);
  ln1 &= ~(MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE);

  lane_mask = intel_tc_port_get_lane_mask(intel_dig_port);

  switch (lane_mask) {
  case 0x1:
  case 0x4:
   break;
  case 0x2:
   ln0 |= MG_DP_MODE_CFG_DP_X1_MODE;
   break;
  case 0x3:
   ln0 |= MG_DP_MODE_CFG_DP_X1_MODE |
          MG_DP_MODE_CFG_DP_X2_MODE;
   break;
  case 0x8:
   ln1 |= MG_DP_MODE_CFG_DP_X1_MODE;
   break;
  case 0xC:
   ln1 |= MG_DP_MODE_CFG_DP_X1_MODE |
          MG_DP_MODE_CFG_DP_X2_MODE;
   break;
  case 0xF:
   ln0 |= MG_DP_MODE_CFG_DP_X1_MODE |
          MG_DP_MODE_CFG_DP_X2_MODE;
   ln1 |= MG_DP_MODE_CFG_DP_X1_MODE |
          MG_DP_MODE_CFG_DP_X2_MODE;
   break;
  default:
   MISSING_CASE(lane_mask);
  }
  break;

 case 128:
  ln0 |= MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE;
  ln1 |= MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE;
  break;

 default:
  MISSING_CASE(intel_dig_port->tc_mode);
  return;
 }

 I915_WRITE(MG_DP_MODE(0, port), ln0);
 I915_WRITE(MG_DP_MODE(1, port), ln1);
}
