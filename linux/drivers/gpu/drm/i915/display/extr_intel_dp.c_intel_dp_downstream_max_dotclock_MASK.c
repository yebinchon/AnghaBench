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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_dp {int* downstream_ports; int /*<<< orphan*/  dpcd; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int max_dotclk_freq; } ;

/* Variables and functions */
 int DP_DS_PORT_TYPE_MASK ; 
 int DP_DS_PORT_TYPE_VGA ; 
 struct intel_digital_port* FUNC0 (struct intel_dp*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int,int) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC0(intel_dp);
	struct intel_encoder *encoder = &intel_dig_port->base;
	struct drm_i915_private *dev_priv = FUNC3(encoder->base.dev);
	int max_dotclk = dev_priv->max_dotclk_freq;
	int ds_max_dotclk;

	int type = intel_dp->downstream_ports[0] & DP_DS_PORT_TYPE_MASK;

	if (type != DP_DS_PORT_TYPE_VGA)
		return max_dotclk;

	ds_max_dotclk = FUNC1(intel_dp->dpcd,
						    intel_dp->downstream_ports);

	if (ds_max_dotclk != 0)
		max_dotclk = FUNC2(max_dotclk, ds_max_dotclk);

	return max_dotclk;
}