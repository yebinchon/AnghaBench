
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int BUG () ;
 int DPIO_PHY_STATUS ;
 int DPLL (int ) ;
 int DPLL_PORTB_READY_MASK ;
 int DPLL_PORTC_READY_MASK ;
 int DPLL_PORTD_READY_MASK ;
 int I915_READ (int ) ;



 int WARN (int,char*,int ,int,unsigned int) ;
 scalar_t__ intel_de_wait_for_register (struct drm_i915_private*,int ,int,unsigned int,int) ;
 int port_name (int) ;

void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
    struct intel_digital_port *dport,
    unsigned int expected_mask)
{
 u32 port_mask;
 i915_reg_t dpll_reg;

 switch (dport->base.port) {
 case 130:
  port_mask = DPLL_PORTB_READY_MASK;
  dpll_reg = DPLL(0);
  break;
 case 129:
  port_mask = DPLL_PORTC_READY_MASK;
  dpll_reg = DPLL(0);
  expected_mask <<= 4;
  break;
 case 128:
  port_mask = DPLL_PORTD_READY_MASK;
  dpll_reg = DPIO_PHY_STATUS;
  break;
 default:
  BUG();
 }

 if (intel_de_wait_for_register(dev_priv, dpll_reg,
           port_mask, expected_mask, 1000))
  WARN(1, "timed out waiting for port %c ready: got 0x%x, expected 0x%x\n",
       port_name(dport->base.port),
       I915_READ(dpll_reg) & port_mask, expected_mask);
}
