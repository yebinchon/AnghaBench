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
struct drm_connector_state {int /*<<< orphan*/  best_encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 
 struct intel_dp* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector_state const*) ; 

void FUNC5(const struct drm_connector_state *old_conn_state)
{
	struct intel_dp *intel_dp = FUNC2(old_conn_state->best_encoder);

	if (!FUNC3(intel_dp))
		return;

	FUNC0("\n");

	FUNC1(intel_dp);
	FUNC4(old_conn_state);
}