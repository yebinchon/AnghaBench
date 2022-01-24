#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  v_c_bot; int /*<<< orphan*/  v_c; int /*<<< orphan*/  v_bot; int /*<<< orphan*/  v; int /*<<< orphan*/  h_c; int /*<<< orphan*/  h; } ;
struct TYPE_3__ {int /*<<< orphan*/  vert_c; int /*<<< orphan*/  horz_c; int /*<<< orphan*/  vert; int /*<<< orphan*/  horz; } ;
struct scaler_data {TYPE_2__ inits; TYPE_1__ ratios; } ;
struct dcn10_dpp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCL_HORZ_FILTER_INIT ; 
 int /*<<< orphan*/  SCL_HORZ_FILTER_INIT_C ; 
 int /*<<< orphan*/  SCL_HORZ_FILTER_SCALE_RATIO ; 
 int /*<<< orphan*/  SCL_HORZ_FILTER_SCALE_RATIO_C ; 
 int /*<<< orphan*/  SCL_H_INIT_FRAC ; 
 int /*<<< orphan*/  SCL_H_INIT_FRAC_C ; 
 int /*<<< orphan*/  SCL_H_INIT_INT ; 
 int /*<<< orphan*/  SCL_H_INIT_INT_C ; 
 int /*<<< orphan*/  SCL_H_SCALE_RATIO ; 
 int /*<<< orphan*/  SCL_H_SCALE_RATIO_C ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_INIT ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_INIT_BOT ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_INIT_BOT_C ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_INIT_C ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_SCALE_RATIO ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_SCALE_RATIO_C ; 
 int /*<<< orphan*/  SCL_V_INIT_FRAC ; 
 int /*<<< orphan*/  SCL_V_INIT_FRAC_BOT ; 
 int /*<<< orphan*/  SCL_V_INIT_FRAC_BOT_C ; 
 int /*<<< orphan*/  SCL_V_INIT_FRAC_C ; 
 int /*<<< orphan*/  SCL_V_INIT_INT ; 
 int /*<<< orphan*/  SCL_V_INIT_INT_BOT ; 
 int /*<<< orphan*/  SCL_V_INIT_INT_BOT_C ; 
 int /*<<< orphan*/  SCL_V_INIT_INT_C ; 
 int /*<<< orphan*/  SCL_V_SCALE_RATIO ; 
 int /*<<< orphan*/  SCL_V_SCALE_RATIO_C ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
		struct dcn10_dpp *dpp, const struct scaler_data *data)
{
	uint32_t init_frac = 0;
	uint32_t init_int = 0;

	FUNC1(SCL_HORZ_FILTER_SCALE_RATIO, 0,
			SCL_H_SCALE_RATIO, FUNC5(data->ratios.horz) << 5);

	FUNC1(SCL_VERT_FILTER_SCALE_RATIO, 0,
			SCL_V_SCALE_RATIO, FUNC5(data->ratios.vert) << 5);

	FUNC1(SCL_HORZ_FILTER_SCALE_RATIO_C, 0,
			SCL_H_SCALE_RATIO_C, FUNC5(data->ratios.horz_c) << 5);

	FUNC1(SCL_VERT_FILTER_SCALE_RATIO_C, 0,
			SCL_V_SCALE_RATIO_C, FUNC5(data->ratios.vert_c) << 5);

	/*
	 * 0.24 format for fraction, first five bits zeroed
	 */
	init_frac = FUNC4(data->inits.h) << 5;
	init_int = FUNC3(data->inits.h);
	FUNC2(SCL_HORZ_FILTER_INIT, 0,
		SCL_H_INIT_FRAC, init_frac,
		SCL_H_INIT_INT, init_int);

	init_frac = FUNC4(data->inits.h_c) << 5;
	init_int = FUNC3(data->inits.h_c);
	FUNC2(SCL_HORZ_FILTER_INIT_C, 0,
		SCL_H_INIT_FRAC_C, init_frac,
		SCL_H_INIT_INT_C, init_int);

	init_frac = FUNC4(data->inits.v) << 5;
	init_int = FUNC3(data->inits.v);
	FUNC2(SCL_VERT_FILTER_INIT, 0,
		SCL_V_INIT_FRAC, init_frac,
		SCL_V_INIT_INT, init_int);

	if (FUNC0(SCL_VERT_FILTER_INIT_BOT)) {
		init_frac = FUNC4(data->inits.v_bot) << 5;
		init_int = FUNC3(data->inits.v_bot);
		FUNC2(SCL_VERT_FILTER_INIT_BOT, 0,
			SCL_V_INIT_FRAC_BOT, init_frac,
			SCL_V_INIT_INT_BOT, init_int);
	}

	init_frac = FUNC4(data->inits.v_c) << 5;
	init_int = FUNC3(data->inits.v_c);
	FUNC2(SCL_VERT_FILTER_INIT_C, 0,
		SCL_V_INIT_FRAC_C, init_frac,
		SCL_V_INIT_INT_C, init_int);

	if (FUNC0(SCL_VERT_FILTER_INIT_BOT_C)) {
		init_frac = FUNC4(data->inits.v_c_bot) << 5;
		init_int = FUNC3(data->inits.v_c_bot);
		FUNC2(SCL_VERT_FILTER_INIT_BOT_C, 0,
			SCL_V_INIT_FRAC_BOT_C, init_frac,
			SCL_V_INIT_INT_BOT_C, init_int);
	}
}