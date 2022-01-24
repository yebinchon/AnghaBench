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
struct intel_digital_port {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC2(intel_dp);
	struct intel_digital_port *dig_port = FUNC1(intel_dp);

	FUNC7(&dev_priv->pps_mutex);

	if (!FUNC3(intel_dp))
		return;

	/*
	 * The VDD bit needs a power domain reference, so if the bit is
	 * already enabled when we boot or resume, grab this reference and
	 * schedule a vdd off, so we don't hold on to the reference
	 * indefinitely.
	 */
	FUNC0("VDD left on by BIOS, adjusting state tracking\n");
	FUNC6(dev_priv, FUNC5(dig_port));

	FUNC4(intel_dp);
}