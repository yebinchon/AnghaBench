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
struct intel_dp {int want_panel_vdd; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_dp *intel_dp, bool sync)
{
	struct drm_i915_private *dev_priv = FUNC2(intel_dp);

	FUNC6(&dev_priv->pps_mutex);

	if (!FUNC5(intel_dp))
		return;

	FUNC0(!intel_dp->want_panel_vdd, "eDP port %c VDD not forced on",
	     FUNC7(FUNC1(intel_dp)->base.port));

	intel_dp->want_panel_vdd = false;

	if (sync)
		FUNC3(intel_dp);
	else
		FUNC4(intel_dp);
}