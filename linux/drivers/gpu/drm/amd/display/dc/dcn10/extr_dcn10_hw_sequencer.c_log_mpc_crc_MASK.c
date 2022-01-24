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
struct dce_hwseq {int dummy; } ;
struct dc_log_buffer_ctx {int dummy; } ;
struct dc_context {int dummy; } ;
struct dc {struct dce_hwseq* hwseq; struct dc_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_TOP0_DPP_CRC_VAL_B_A ; 
 int /*<<< orphan*/  DPP_TOP0_DPP_CRC_VAL_R_G ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  MPC_CRC_RESULT_AR ; 
 int /*<<< orphan*/  MPC_CRC_RESULT_C ; 
 int /*<<< orphan*/  MPC_CRC_RESULT_GB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dc *dc,
	struct dc_log_buffer_ctx *log_ctx)
{
	struct dc_context *dc_ctx = dc->ctx;
	struct dce_hwseq *hws = dc->hwseq;

	if (FUNC1(MPC_CRC_RESULT_GB))
		FUNC0("MPC_CRC_RESULT_GB:%d MPC_CRC_RESULT_C:%d MPC_CRC_RESULT_AR:%d\n",
		FUNC2(MPC_CRC_RESULT_GB), FUNC2(MPC_CRC_RESULT_C), FUNC2(MPC_CRC_RESULT_AR));
	if (FUNC1(DPP_TOP0_DPP_CRC_VAL_B_A))
		FUNC0("DPP_TOP0_DPP_CRC_VAL_B_A:%d DPP_TOP0_DPP_CRC_VAL_R_G:%d\n",
		FUNC2(DPP_TOP0_DPP_CRC_VAL_B_A), FUNC2(DPP_TOP0_DPP_CRC_VAL_R_G));
}