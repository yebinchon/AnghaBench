#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int buffer_size_unit; scalar_t__ has_writeback; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_GLOBAL_MFLAG_ATTRIBUTE ; 
 int OMAP_DSS_WB ; 
 int FUNC0 (struct dispc_device*) ; 
 int FUNC1 (struct dispc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct dispc_device *dispc)
{
	int i;

	/*
	 * HACK: NV12 color format and MFLAG seem to have problems working
	 * together: using two displays, and having an NV12 overlay on one of
	 * the displays will cause underflows/synclosts when MFLAG_CTRL=2.
	 * Changing MFLAG thresholds and PRELOAD to certain values seem to
	 * remove the errors, but there doesn't seem to be a clear logic on
	 * which values work and which not.
	 *
	 * As a work-around, set force MFLAG to always on.
	 */
	FUNC4(dispc, DISPC_GLOBAL_MFLAG_ATTRIBUTE,
		(1 << 0) |	/* MFLAG_CTRL = force always on */
		(0 << 2));	/* MFLAG_START = disable */

	for (i = 0; i < FUNC0(dispc); ++i) {
		u32 size = FUNC1(dispc, i);
		u32 unit = dispc->feat->buffer_size_unit;
		u32 low, high;

		FUNC2(dispc, i, true);

		/*
		 * Simulation team suggests below thesholds:
		 * HT = fifosize * 5 / 8;
		 * LT = fifosize * 4 / 8;
		 */

		low = size * 4 / 8 / unit;
		high = size * 5 / 8 / unit;

		FUNC3(dispc, i, low, high);
	}

	if (dispc->feat->has_writeback) {
		u32 size = FUNC1(dispc, OMAP_DSS_WB);
		u32 unit = dispc->feat->buffer_size_unit;
		u32 low, high;

		FUNC2(dispc, OMAP_DSS_WB, true);

		/*
		 * Simulation team suggests below thesholds:
		 * HT = fifosize * 5 / 8;
		 * LT = fifosize * 4 / 8;
		 */

		low = size * 4 / 8 / unit;
		high = size * 5 / 8 / unit;

		FUNC3(dispc, OMAP_DSS_WB, low, high);
	}
}