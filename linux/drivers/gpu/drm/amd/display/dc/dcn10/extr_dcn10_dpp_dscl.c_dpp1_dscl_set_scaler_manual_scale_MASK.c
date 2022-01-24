#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ h_taps_c; scalar_t__ v_taps_c; scalar_t__ h_taps; scalar_t__ v_taps; } ;
struct scaler_data {scalar_t__ format; TYPE_4__ taps; int /*<<< orphan*/  lb_params; int /*<<< orphan*/  v_active; int /*<<< orphan*/  h_active; int /*<<< orphan*/  recout; } ;
struct dpp {TYPE_3__* ctx; } ;
struct dcn10_dpp {struct scaler_data scl_data; } ;
typedef  enum lb_memory_config { ____Placeholder_lb_memory_config } lb_memory_config ;
typedef  enum dscl_mode_sel { ____Placeholder_dscl_mode_sel } dscl_mode_sel ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_5__ {int /*<<< orphan*/  always_scale; } ;
struct TYPE_6__ {TYPE_1__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOCAL_MODE ; 
 int /*<<< orphan*/  AUTOCAL_MODE_OFF ; 
 int /*<<< orphan*/  AUTOCAL_NUM_PIPE ; 
 int /*<<< orphan*/  AUTOCAL_PIPE_ID ; 
 int /*<<< orphan*/  BLACK_OFFSET_CBCR ; 
 int /*<<< orphan*/  BLACK_OFFSET_RGB_Y ; 
 int /*<<< orphan*/  DSCL_AUTOCAL ; 
 int /*<<< orphan*/  DSCL_MODE ; 
 int DSCL_MODE_DSCL_BYPASS ; 
 int DSCL_MODE_SCALING_444_BYPASS ; 
 int /*<<< orphan*/  MPC_HEIGHT ; 
 int /*<<< orphan*/  MPC_SIZE ; 
 int /*<<< orphan*/  MPC_WIDTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PIXEL_FORMAT_VIDEO_BEGIN ; 
 scalar_t__ PIXEL_FORMAT_VIDEO_END ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCL_BLACK_OFFSET ; 
 int /*<<< orphan*/  SCL_BLACK_OFFSET_CBCR ; 
 int /*<<< orphan*/  SCL_BLACK_OFFSET_RGB_Y ; 
 int /*<<< orphan*/  SCL_H_NUM_TAPS ; 
 int /*<<< orphan*/  SCL_H_NUM_TAPS_C ; 
 int /*<<< orphan*/  SCL_MODE ; 
 int /*<<< orphan*/  SCL_TAP_CONTROL ; 
 int /*<<< orphan*/  SCL_V_NUM_TAPS ; 
 int /*<<< orphan*/  SCL_V_NUM_TAPS_C ; 
 struct dcn10_dpp* FUNC6 (struct dpp*) ; 
 int FUNC7 (struct dcn10_dpp*,struct scaler_data const*) ; 
 int FUNC8 (struct dpp*,struct scaler_data const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dcn10_dpp*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dcn10_dpp*,struct scaler_data const*) ; 
 int /*<<< orphan*/  FUNC11 (struct dcn10_dpp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dcn10_dpp*,struct scaler_data const*,int) ; 
 scalar_t__ FUNC13 (struct scaler_data*,struct scaler_data const*,int) ; 

void FUNC14(
	struct dpp *dpp_base,
	const struct scaler_data *scl_data)
{
	enum lb_memory_config lb_config;
	struct dcn10_dpp *dpp = FUNC6(dpp_base);
	enum dscl_mode_sel dscl_mode = FUNC8(
			dpp_base, scl_data, dpp_base->ctx->dc->debug.always_scale);
	bool ycbcr = scl_data->format >= PIXEL_FORMAT_VIDEO_BEGIN
				&& scl_data->format <= PIXEL_FORMAT_VIDEO_END;

	if (FUNC13(&dpp->scl_data, scl_data, sizeof(*scl_data)) == 0)
		return;

	FUNC0();

	dpp->scl_data = *scl_data;

	/* Autocal off */
	FUNC3(DSCL_AUTOCAL, 0,
		AUTOCAL_MODE, AUTOCAL_MODE_OFF,
		AUTOCAL_NUM_PIPE, 0,
		AUTOCAL_PIPE_ID, 0);

	/* Recout */
	FUNC11(dpp, &scl_data->recout);

	/* MPC Size */
	FUNC2(MPC_SIZE, 0,
		/* Number of horizontal pixels of MPC */
			 MPC_WIDTH, scl_data->h_active,
		/* Number of vertical lines of MPC */
			 MPC_HEIGHT, scl_data->v_active);

	/* SCL mode */
	FUNC5(SCL_MODE, DSCL_MODE, dscl_mode);

	if (dscl_mode == DSCL_MODE_DSCL_BYPASS)
		return;

	/* LB */
	lb_config =  FUNC7(dpp, scl_data);
	FUNC9(dpp, &scl_data->lb_params, lb_config);

	if (dscl_mode == DSCL_MODE_SCALING_444_BYPASS)
		return;

	/* Black offsets */
	if (FUNC1(SCL_BLACK_OFFSET)) {
		if (ycbcr)
			FUNC2(SCL_BLACK_OFFSET, 0,
					SCL_BLACK_OFFSET_RGB_Y, BLACK_OFFSET_RGB_Y,
					SCL_BLACK_OFFSET_CBCR, BLACK_OFFSET_CBCR);
		else

			FUNC2(SCL_BLACK_OFFSET, 0,
					SCL_BLACK_OFFSET_RGB_Y, BLACK_OFFSET_RGB_Y,
					SCL_BLACK_OFFSET_CBCR, BLACK_OFFSET_RGB_Y);
	}

	/* Manually calculate scale ratio and init values */
	FUNC10(dpp, scl_data);

	/* HTaps/VTaps */
	FUNC4(SCL_TAP_CONTROL, 0,
		SCL_V_NUM_TAPS, scl_data->taps.v_taps - 1,
		SCL_H_NUM_TAPS, scl_data->taps.h_taps - 1,
		SCL_V_NUM_TAPS_C, scl_data->taps.v_taps_c - 1,
		SCL_H_NUM_TAPS_C, scl_data->taps.h_taps_c - 1);

	FUNC12(dpp, scl_data, ycbcr);
	FUNC0();
}