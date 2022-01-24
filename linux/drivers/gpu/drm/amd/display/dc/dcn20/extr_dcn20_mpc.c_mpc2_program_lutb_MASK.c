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
struct mpc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct dcn20_mpc {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_END_CNTL1_B ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_END_CNTL1_G ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_END_CNTL1_R ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_END_CNTL2_B ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_END_CNTL2_G ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_END_CNTL2_R ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_REGION_0_1 ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_REGION_32_33 ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_SLOPE_CNTL_B ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_SLOPE_CNTL_G ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_SLOPE_CNTL_R ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_START_CNTL_B ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_START_CNTL_G ; 
 int /*<<< orphan*/ * MPCC_OGAM_RAMB_START_CNTL_R ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dcn20_mpc* FUNC1 (struct mpc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwl_params const*,struct xfer_func_reg*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpc*,struct xfer_func_reg*) ; 

__attribute__((used)) static void FUNC4(struct mpc *mpc, int mpcc_id,
			const struct pwl_params *params)
{
	struct dcn20_mpc *mpc20 = FUNC1(mpc);
	struct xfer_func_reg gam_regs;

	FUNC3(mpc, &gam_regs);

	gam_regs.start_cntl_b = FUNC0(MPCC_OGAM_RAMB_START_CNTL_B[mpcc_id]);
	gam_regs.start_cntl_g = FUNC0(MPCC_OGAM_RAMB_START_CNTL_G[mpcc_id]);
	gam_regs.start_cntl_r = FUNC0(MPCC_OGAM_RAMB_START_CNTL_R[mpcc_id]);
	gam_regs.start_slope_cntl_b = FUNC0(MPCC_OGAM_RAMB_SLOPE_CNTL_B[mpcc_id]);
	gam_regs.start_slope_cntl_g = FUNC0(MPCC_OGAM_RAMB_SLOPE_CNTL_G[mpcc_id]);
	gam_regs.start_slope_cntl_r = FUNC0(MPCC_OGAM_RAMB_SLOPE_CNTL_R[mpcc_id]);
	gam_regs.start_end_cntl1_b = FUNC0(MPCC_OGAM_RAMB_END_CNTL1_B[mpcc_id]);
	gam_regs.start_end_cntl2_b = FUNC0(MPCC_OGAM_RAMB_END_CNTL2_B[mpcc_id]);
	gam_regs.start_end_cntl1_g = FUNC0(MPCC_OGAM_RAMB_END_CNTL1_G[mpcc_id]);
	gam_regs.start_end_cntl2_g = FUNC0(MPCC_OGAM_RAMB_END_CNTL2_G[mpcc_id]);
	gam_regs.start_end_cntl1_r = FUNC0(MPCC_OGAM_RAMB_END_CNTL1_R[mpcc_id]);
	gam_regs.start_end_cntl2_r = FUNC0(MPCC_OGAM_RAMB_END_CNTL2_R[mpcc_id]);
	gam_regs.region_start = FUNC0(MPCC_OGAM_RAMB_REGION_0_1[mpcc_id]);
	gam_regs.region_end = FUNC0(MPCC_OGAM_RAMB_REGION_32_33[mpcc_id]);

	FUNC2(mpc20->base.ctx, params, &gam_regs);

}