#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int hpd_pin; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int BXT_DE_PORT_HP_DDIA ; 
 int BXT_DE_PORT_HP_DDIB ; 
 int BXT_DE_PORT_HP_DDIC ; 
 int /*<<< orphan*/  GEN8_DE_PORT_ISR ; 
#define  HPD_PORT_A 130 
#define  HPD_PORT_B 129 
#define  HPD_PORT_C 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC2(encoder->base.dev);
	u32 bit;

	switch (encoder->hpd_pin) {
	case HPD_PORT_A:
		bit = BXT_DE_PORT_HP_DDIA;
		break;
	case HPD_PORT_B:
		bit = BXT_DE_PORT_HP_DDIB;
		break;
	case HPD_PORT_C:
		bit = BXT_DE_PORT_HP_DDIC;
		break;
	default:
		FUNC1(encoder->hpd_pin);
		return false;
	}

	return FUNC0(GEN8_DE_PORT_ISR) & bit;
}