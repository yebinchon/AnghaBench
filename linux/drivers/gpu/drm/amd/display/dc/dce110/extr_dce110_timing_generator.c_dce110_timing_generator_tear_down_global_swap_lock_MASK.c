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
typedef  scalar_t__ uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_GSL_CHECK_LINE_NUM ; 
 int /*<<< orphan*/  CRTC_GSL_CONTROL ; 
 int /*<<< orphan*/  CRTC_GSL_FORCE_DELAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  DCP_GSL0_EN ; 
 int /*<<< orphan*/  DCP_GSL_CONTROL ; 
 int /*<<< orphan*/  DCP_GSL_DELAY_SURFACE_UPDATE_PENDING ; 
 int /*<<< orphan*/  DCP_GSL_HSYNC_FLIP_CHECK_DELAY ; 
 int /*<<< orphan*/  DCP_GSL_HSYNC_FLIP_FORCE_DELAY ; 
 int /*<<< orphan*/  DCP_GSL_MASTER_EN ; 
 int /*<<< orphan*/  DCP_GSL_SYNC_SOURCE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  mmCRTC_GSL_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_V_TOTAL ; 
 int /*<<< orphan*/  mmDCP_GSL_CONTROL ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(
	struct timing_generator *tg)
{
	/* Clear all the register writes done by
	 * dce110_timing_generator_setup_global_swap_lock
	 */

	uint32_t value;
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t address = FUNC2(mmDCP_GSL_CONTROL);

	value = 0;

	/* This pipe will belong to GSL Group zero. */
	/* Settig HW default values from reg specs */
	FUNC5(value,
			0,
			DCP_GSL_CONTROL,
			DCP_GSL0_EN);

	FUNC5(value,
			0,
			DCP_GSL_CONTROL,
			DCP_GSL_MASTER_EN);

	FUNC5(value,
			0x2,
			DCP_GSL_CONTROL,
			DCP_GSL_HSYNC_FLIP_FORCE_DELAY);

	FUNC5(value,
			0x6,
			DCP_GSL_CONTROL,
			DCP_GSL_HSYNC_FLIP_CHECK_DELAY);

	/* Restore DCP_GSL_PURPOSE_SURFACE_FLIP */
	{
		uint32_t value_crtc_vtotal;

		value_crtc_vtotal = FUNC3(tg->ctx,
				FUNC0(mmCRTC_V_TOTAL));

		FUNC5(value,
				0,
				DCP_GSL_CONTROL,
				DCP_GSL_SYNC_SOURCE);
	}

	FUNC5(value,
			0,
			DCP_GSL_CONTROL,
			DCP_GSL_DELAY_SURFACE_UPDATE_PENDING);

	FUNC4(tg->ctx, address, value);

	/********************************************************************/
	address = FUNC0(mmCRTC_GSL_CONTROL);

	value = 0;
	FUNC5(value,
			0,
			CRTC_GSL_CONTROL,
			CRTC_GSL_CHECK_LINE_NUM);

	FUNC5(value,
			0x2,
			CRTC_GSL_CONTROL,
			CRTC_GSL_FORCE_DELAY);

	FUNC4(tg->ctx, address, value);
}