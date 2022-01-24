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
typedef  unsigned int u32 ;
struct dispc_device {TYPE_1__* feat; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
struct TYPE_2__ {unsigned int buffer_size_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEAT_OMAP3_DSI_FIFO_BUG ; 
 int OMAP_DSS_WB ; 
 int FUNC0 (struct dispc_device*) ; 
 scalar_t__ FUNC1 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct dispc_device*,int) ; 
 unsigned int FUNC3 (struct dispc_device*,int) ; 

void FUNC4(struct dispc_device *dispc,
				       enum omap_plane_id plane,
				       u32 *fifo_low, u32 *fifo_high,
				       bool use_fifomerge, bool manual_update)
{
	/*
	 * All sizes are in bytes. Both the buffer and burst are made of
	 * buffer_units, and the fifo thresholds must be buffer_unit aligned.
	 */
	unsigned int buf_unit = dispc->feat->buffer_size_unit;
	unsigned int ovl_fifo_size, total_fifo_size, burst_size;
	int i;

	burst_size = FUNC2(dispc, plane);
	ovl_fifo_size = FUNC3(dispc, plane);

	if (use_fifomerge) {
		total_fifo_size = 0;
		for (i = 0; i < FUNC0(dispc); ++i)
			total_fifo_size += FUNC3(dispc, i);
	} else {
		total_fifo_size = ovl_fifo_size;
	}

	/*
	 * We use the same low threshold for both fifomerge and non-fifomerge
	 * cases, but for fifomerge we calculate the high threshold using the
	 * combined fifo size
	 */

	if (manual_update && FUNC1(dispc, FEAT_OMAP3_DSI_FIFO_BUG)) {
		*fifo_low = ovl_fifo_size - burst_size * 2;
		*fifo_high = total_fifo_size - burst_size;
	} else if (plane == OMAP_DSS_WB) {
		/*
		 * Most optimal configuration for writeback is to push out data
		 * to the interconnect the moment writeback pushes enough pixels
		 * in the FIFO to form a burst
		 */
		*fifo_low = 0;
		*fifo_high = burst_size;
	} else {
		*fifo_low = ovl_fifo_size - burst_size;
		*fifo_high = total_fifo_size - buf_unit;
	}
}