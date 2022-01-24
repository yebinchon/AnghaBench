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
struct intel_dp {int /*<<< orphan*/  fec_capable; } ;
struct intel_crtc_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct intel_dp*,struct intel_crtc_state const*) ; 

__attribute__((used)) static bool FUNC2(struct intel_dp *intel_dp,
				  const struct intel_crtc_state *pipe_config)
{
	return FUNC1(intel_dp, pipe_config) &&
		FUNC0(intel_dp->fec_capable);
}