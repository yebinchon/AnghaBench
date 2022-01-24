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
struct timing_generator {int dummy; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_GSL_CONTROL ; 
 int /*<<< orphan*/  CRTC_GSL_CHECK_LINE_NUM ; 
 int /*<<< orphan*/  CRTC_GSL_FORCE_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC2 (struct timing_generator*) ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN ; 
 int /*<<< orphan*/  DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFLIP_CHECK_DELAY ; 
 int /*<<< orphan*/  HFLIP_READY_DELAY ; 

void FUNC4(
	struct timing_generator *tg)
{
	struct dce110_timing_generator *tg110 = FUNC2(tg);

	/* Settig HW default values from reg specs */
	FUNC1(DCP0_DCP_GSL_CONTROL, 6,
			FUNC3(DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN), 0,
			FUNC3(DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN), 0,
			FUNC3(DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY), HFLIP_READY_DELAY,
			FUNC3(DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY), HFLIP_CHECK_DELAY,
			/* DCP_GSL_PURPOSE_SURFACE_FLIP */
			FUNC3(DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE), 0,
			FUNC3(DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING), 0);

	FUNC0(CRTC0_CRTC_GSL_CONTROL,
		       CRTC_GSL_CHECK_LINE_NUM, 0,
		       CRTC_GSL_FORCE_DELAY, 0x2); /*TODO Why this value here ?*/
}