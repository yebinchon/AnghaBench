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
struct intel_crtc_state {scalar_t__ output_format; } ;

/* Variables and functions */
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ; 
 int /*<<< orphan*/  FUNC0 (struct intel_dp*,struct intel_crtc_state const*) ; 

void FUNC1(struct intel_dp *intel_dp,
			       const struct intel_crtc_state *crtc_state)
{
	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
		return;

	FUNC0(intel_dp, crtc_state);
}