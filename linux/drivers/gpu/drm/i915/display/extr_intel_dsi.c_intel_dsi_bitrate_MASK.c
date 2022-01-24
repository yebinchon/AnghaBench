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
struct intel_dsi {int pclk; int lane_count; int /*<<< orphan*/  pixel_format; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(const struct intel_dsi *intel_dsi)
{
	int bpp = FUNC1(intel_dsi->pixel_format);

	if (FUNC0(bpp < 0))
		bpp = 16;

	return intel_dsi->pclk * bpp / intel_dsi->lane_count;
}