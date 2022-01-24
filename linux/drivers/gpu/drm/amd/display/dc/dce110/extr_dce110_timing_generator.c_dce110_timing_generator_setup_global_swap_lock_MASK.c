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
typedef  int uint32_t ;
struct timing_generator {int inst; int /*<<< orphan*/  ctx; } ;
struct dcp_gsl_params {int gsl_master; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_GSL_CHECK_LINE_NUM ; 
 int /*<<< orphan*/  CRTC_GSL_CONTROL ; 
 int /*<<< orphan*/  CRTC_GSL_FORCE_DELAY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_V_TOTAL ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  DCIO_GSL0_CNTL ; 
 int /*<<< orphan*/  DCIO_GSL0_GLOBAL_UNLOCK_SEL ; 
 int /*<<< orphan*/  DCIO_GSL0_TIMING_SYNC_SEL ; 
 int /*<<< orphan*/  DCIO_GSL0_VSYNC_SEL ; 
 int /*<<< orphan*/  DCP_GSL0_EN ; 
 int /*<<< orphan*/  DCP_GSL_CONTROL ; 
 int /*<<< orphan*/  DCP_GSL_DELAY_SURFACE_UPDATE_PENDING ; 
 int /*<<< orphan*/  DCP_GSL_HSYNC_FLIP_CHECK_DELAY ; 
 int /*<<< orphan*/  DCP_GSL_HSYNC_FLIP_FORCE_DELAY ; 
 int /*<<< orphan*/  DCP_GSL_MASTER_EN ; 
 int /*<<< orphan*/  DCP_GSL_SYNC_SOURCE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FLIP_READY_BACK_LOOKUP ; 
 int HFLIP_CHECK_DELAY ; 
 int HFLIP_READY_DELAY ; 
 int VFLIP_READY_DELAY ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_GSL_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_GSL_WINDOW ; 
 int /*<<< orphan*/  mmCRTC_V_TOTAL ; 
 int /*<<< orphan*/  mmDCIO_GSL0_CNTL ; 
 int /*<<< orphan*/  mmDCP_GSL_CONTROL ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(
	struct timing_generator *tg,
	const struct dcp_gsl_params *gsl_params)
{
	uint32_t value;
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t address = FUNC2(mmDCP_GSL_CONTROL);
	uint32_t check_point = FLIP_READY_BACK_LOOKUP;

	value = FUNC3(tg->ctx, address);

	/* This pipe will belong to GSL Group zero. */
	FUNC6(value,
			    1,
			    DCP_GSL_CONTROL,
			    DCP_GSL0_EN);

	FUNC6(value,
			    gsl_params->gsl_master == tg->inst,
			    DCP_GSL_CONTROL,
			    DCP_GSL_MASTER_EN);

	FUNC6(value,
			    HFLIP_READY_DELAY,
			    DCP_GSL_CONTROL,
			    DCP_GSL_HSYNC_FLIP_FORCE_DELAY);

	/* Keep signal low (pending high) during 6 lines.
	 * Also defines minimum interval before re-checking signal. */
	FUNC6(value,
			    HFLIP_CHECK_DELAY,
			    DCP_GSL_CONTROL,
			    DCP_GSL_HSYNC_FLIP_CHECK_DELAY);

	FUNC4(tg->ctx, FUNC0(mmDCP_GSL_CONTROL), value);
	value = 0;

	FUNC6(value,
			    gsl_params->gsl_master,
			    DCIO_GSL0_CNTL,
			    DCIO_GSL0_VSYNC_SEL);

	FUNC6(value,
			    0,
			    DCIO_GSL0_CNTL,
			    DCIO_GSL0_TIMING_SYNC_SEL);

	FUNC6(value,
			    0,
			    DCIO_GSL0_CNTL,
			    DCIO_GSL0_GLOBAL_UNLOCK_SEL);

	FUNC4(tg->ctx, FUNC0(mmDCIO_GSL0_CNTL), value);


	{
		uint32_t value_crtc_vtotal;

		value_crtc_vtotal = FUNC3(tg->ctx,
				FUNC0(mmCRTC_V_TOTAL));

		FUNC6(value,
				    0,/* DCP_GSL_PURPOSE_SURFACE_FLIP */
				    DCP_GSL_CONTROL,
				    DCP_GSL_SYNC_SOURCE);

		/* Checkpoint relative to end of frame */
		check_point = FUNC5(value_crtc_vtotal,
						  CRTC_V_TOTAL,
						  CRTC_V_TOTAL);

		FUNC4(tg->ctx, FUNC0(mmCRTC_GSL_WINDOW), 0);
	}

	FUNC6(value,
			    1,
			    DCP_GSL_CONTROL,
			    DCP_GSL_DELAY_SURFACE_UPDATE_PENDING);

	FUNC4(tg->ctx, address, value);

	/********************************************************************/
	address = FUNC0(mmCRTC_GSL_CONTROL);

	value = FUNC3(tg->ctx, address);
	FUNC6(value,
			    check_point - FLIP_READY_BACK_LOOKUP,
			    CRTC_GSL_CONTROL,
			    CRTC_GSL_CHECK_LINE_NUM);

	FUNC6(value,
			    VFLIP_READY_DELAY,
			    CRTC_GSL_CONTROL,
			    CRTC_GSL_FORCE_DELAY);

	FUNC4(tg->ctx, address, value);
}