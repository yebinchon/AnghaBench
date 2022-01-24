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
struct intel_encoder {int /*<<< orphan*/  port; } ;
struct intel_dp {int can_mst; int is_mst; int /*<<< orphan*/  mst_mgr; } ;
struct TYPE_4__ {struct intel_encoder base; } ;
struct TYPE_3__ {int enable_dp_mst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ i915_modparams ; 
 int FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct intel_dp *intel_dp)
{
	struct intel_encoder *encoder =
		&FUNC1(intel_dp)->base;
	bool sink_can_mst = FUNC3(intel_dp);

	FUNC0("MST support? port %c: %s, sink: %s, modparam: %s\n",
		      FUNC4(encoder->port), FUNC5(intel_dp->can_mst),
		      FUNC5(sink_can_mst), FUNC5(i915_modparams.enable_dp_mst));

	if (!intel_dp->can_mst)
		return;

	intel_dp->is_mst = sink_can_mst &&
		i915_modparams.enable_dp_mst;

	FUNC2(&intel_dp->mst_mgr,
					intel_dp->is_mst);
}