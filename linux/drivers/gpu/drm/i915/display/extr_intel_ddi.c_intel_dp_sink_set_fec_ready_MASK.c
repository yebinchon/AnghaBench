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
struct intel_dp {int /*<<< orphan*/  aux; } ;
struct intel_crtc_state {int /*<<< orphan*/  fec_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_FEC_CONFIGURATION ; 
 int /*<<< orphan*/  DP_FEC_READY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_dp *intel_dp,
					const struct intel_crtc_state *crtc_state)
{
	if (!crtc_state->fec_enable)
		return;

	if (FUNC1(&intel_dp->aux, DP_FEC_CONFIGURATION, DP_FEC_READY) <= 0)
		FUNC0("Failed to set FEC_READY in the sink\n");
}