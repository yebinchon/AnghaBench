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
struct xfer_func_reg {void* region_end; void* region_start; void* start_end_cntl2_r; void* start_end_cntl1_r; void* start_end_cntl2_g; void* start_end_cntl1_g; void* start_end_cntl2_b; void* start_end_cntl1_b; void* start_slope_cntl_r; void* start_slope_cntl_g; void* start_slope_cntl_b; void* start_cntl_r; void* start_cntl_g; void* start_cntl_b; } ;
struct pwl_params {int dummy; } ;
struct dpp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct dcn20_dpp {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_END_CNTL1_B ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_END_CNTL1_G ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_END_CNTL1_R ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_END_CNTL2_B ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_END_CNTL2_G ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_END_CNTL2_R ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_REGION_0_1 ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_REGION_32_33 ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_SLOPE_CNTL_B ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_SLOPE_CNTL_G ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_SLOPE_CNTL_R ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_START_CNTL_B ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_START_CNTL_G ; 
 int /*<<< orphan*/  CM_BLNDGAM_RAMB_START_CNTL_R ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwl_params const*,struct xfer_func_reg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dcn20_dpp*,struct xfer_func_reg*) ; 

__attribute__((used)) static void FUNC4(
		struct dpp *dpp_base,
		const struct pwl_params *params)
{
	struct dcn20_dpp *dpp = FUNC1(dpp_base);
	struct xfer_func_reg gam_regs;

	FUNC3(dpp, &gam_regs);

	gam_regs.start_cntl_b = FUNC0(CM_BLNDGAM_RAMB_START_CNTL_B);
	gam_regs.start_cntl_g = FUNC0(CM_BLNDGAM_RAMB_START_CNTL_G);
	gam_regs.start_cntl_r = FUNC0(CM_BLNDGAM_RAMB_START_CNTL_R);
	gam_regs.start_slope_cntl_b = FUNC0(CM_BLNDGAM_RAMB_SLOPE_CNTL_B);
	gam_regs.start_slope_cntl_g = FUNC0(CM_BLNDGAM_RAMB_SLOPE_CNTL_G);
	gam_regs.start_slope_cntl_r = FUNC0(CM_BLNDGAM_RAMB_SLOPE_CNTL_R);
	gam_regs.start_end_cntl1_b = FUNC0(CM_BLNDGAM_RAMB_END_CNTL1_B);
	gam_regs.start_end_cntl2_b = FUNC0(CM_BLNDGAM_RAMB_END_CNTL2_B);
	gam_regs.start_end_cntl1_g = FUNC0(CM_BLNDGAM_RAMB_END_CNTL1_G);
	gam_regs.start_end_cntl2_g = FUNC0(CM_BLNDGAM_RAMB_END_CNTL2_G);
	gam_regs.start_end_cntl1_r = FUNC0(CM_BLNDGAM_RAMB_END_CNTL1_R);
	gam_regs.start_end_cntl2_r = FUNC0(CM_BLNDGAM_RAMB_END_CNTL2_R);
	gam_regs.region_start = FUNC0(CM_BLNDGAM_RAMB_REGION_0_1);
	gam_regs.region_end = FUNC0(CM_BLNDGAM_RAMB_REGION_32_33);

	FUNC2(dpp->base.ctx, params, &gam_regs);
}