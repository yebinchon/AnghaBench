#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {scalar_t__ tc_mode; int aux_ch; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
#define  AUX_CH_A 133 
#define  AUX_CH_B 132 
#define  AUX_CH_C 131 
#define  AUX_CH_D 130 
#define  AUX_CH_E 129 
#define  AUX_CH_F 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int POWER_DOMAIN_AUX_A ; 
 int POWER_DOMAIN_AUX_B ; 
 int POWER_DOMAIN_AUX_C ; 
 int POWER_DOMAIN_AUX_D ; 
 int POWER_DOMAIN_AUX_E ; 
 int POWER_DOMAIN_AUX_F ; 
 int POWER_DOMAIN_AUX_TBT1 ; 
 int POWER_DOMAIN_AUX_TBT2 ; 
 int POWER_DOMAIN_AUX_TBT3 ; 
 int POWER_DOMAIN_AUX_TBT4 ; 
 scalar_t__ TC_PORT_TBT_ALT ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

enum intel_display_power_domain
FUNC4(struct intel_digital_port *dig_port)
{
	struct drm_i915_private *dev_priv = FUNC3(dig_port->base.base.dev);
	enum phy phy = FUNC2(dev_priv, dig_port->base.port);

	if (FUNC1(dev_priv, phy) &&
	    dig_port->tc_mode == TC_PORT_TBT_ALT) {
		switch (dig_port->aux_ch) {
		case AUX_CH_C:
			return POWER_DOMAIN_AUX_TBT1;
		case AUX_CH_D:
			return POWER_DOMAIN_AUX_TBT2;
		case AUX_CH_E:
			return POWER_DOMAIN_AUX_TBT3;
		case AUX_CH_F:
			return POWER_DOMAIN_AUX_TBT4;
		default:
			FUNC0(dig_port->aux_ch);
			return POWER_DOMAIN_AUX_TBT1;
		}
	}

	switch (dig_port->aux_ch) {
	case AUX_CH_A:
		return POWER_DOMAIN_AUX_A;
	case AUX_CH_B:
		return POWER_DOMAIN_AUX_B;
	case AUX_CH_C:
		return POWER_DOMAIN_AUX_C;
	case AUX_CH_D:
		return POWER_DOMAIN_AUX_D;
	case AUX_CH_E:
		return POWER_DOMAIN_AUX_E;
	case AUX_CH_F:
		return POWER_DOMAIN_AUX_F;
	default:
		FUNC0(dig_port->aux_ch);
		return POWER_DOMAIN_AUX_A;
	}
}