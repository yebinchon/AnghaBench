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
typedef  int /*<<< orphan*/  uint_fixed_16_16_t ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_plane_state {int dummy; } ;
struct intel_crtc_state {int /*<<< orphan*/  pixel_rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state const*,struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state const*,struct intel_plane_state const*) ; 

__attribute__((used)) static u32
FUNC4(const struct intel_crtc_state *crtc_state,
			      const struct intel_plane_state *plane_state)
{
	u64 adjusted_pixel_rate;
	uint_fixed_16_16_t downscale_amount;

	/* Shouldn't reach here on disabled planes... */
	if (FUNC0(!FUNC1(crtc_state, plane_state)))
		return 0;

	/*
	 * Adjusted plane pixel rate is just the pipe's adjusted pixel rate
	 * with additional adjustments for plane-specific scaling.
	 */
	adjusted_pixel_rate = crtc_state->pixel_rate;
	downscale_amount = FUNC3(crtc_state, plane_state);

	return FUNC2(adjusted_pixel_rate,
					    downscale_amount);
}