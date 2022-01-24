#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_dp {int dummy; } ;
struct intel_digital_port {int aux_ch; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum aux_ch { ____Placeholder_aux_ch } aux_ch ;

/* Variables and functions */
#define  AUX_CH_B 130 
#define  AUX_CH_C 129 
#define  AUX_CH_D 128 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct intel_digital_port* FUNC2 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 

__attribute__((used)) static i915_reg_t FUNC4(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);
	struct intel_digital_port *dig_port = FUNC2(intel_dp);
	enum aux_ch aux_ch = dig_port->aux_ch;

	switch (aux_ch) {
	case AUX_CH_B:
	case AUX_CH_C:
	case AUX_CH_D:
		return FUNC0(aux_ch);
	default:
		FUNC1(aux_ch);
		return FUNC0(AUX_CH_B);
	}
}