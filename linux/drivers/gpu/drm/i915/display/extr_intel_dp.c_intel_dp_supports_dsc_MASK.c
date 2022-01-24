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
struct intel_dp {int /*<<< orphan*/  dsc_dpcd; } ;
struct intel_crtc_state {int /*<<< orphan*/  fec_enable; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 
 scalar_t__ FUNC2 (struct intel_dp*,struct intel_crtc_state const*) ; 

__attribute__((used)) static bool FUNC3(struct intel_dp *intel_dp,
				  const struct intel_crtc_state *pipe_config)
{
	if (!FUNC1(intel_dp) && !pipe_config->fec_enable)
		return false;

	return FUNC2(intel_dp, pipe_config) &&
		FUNC0(intel_dp->dsc_dpcd);
}