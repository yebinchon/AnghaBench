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
typedef  scalar_t__ uint8_t ;
struct dc_context {int /*<<< orphan*/  dce_environment; } ;
struct dc_bios {TYPE_1__* funcs; } ;
struct dc {struct dc_context* ctx; } ;
typedef  enum pipe_gating_control { ____Placeholder_pipe_gating_control } pipe_gating_control ;
typedef  enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef  enum bp_pipe_control_action { ____Placeholder_bp_pipe_control_action } bp_pipe_control_action ;
struct TYPE_2__ {int (* enable_disp_power_gating ) (struct dc_bios*,scalar_t__,int) ;} ;

/* Variables and functions */
 int ASIC_PIPE_DISABLE ; 
 int ASIC_PIPE_ENABLE ; 
 int ASIC_PIPE_INIT ; 
 int BP_RESULT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PIPE_GATING_CONTROL_ENABLE ; 
 int PIPE_GATING_CONTROL_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_MASTER_UPDATE_MODE ; 
 int FUNC4 (struct dc_bios*,scalar_t__,int) ; 

__attribute__((used)) static bool FUNC5(
	struct dc *dc,
	uint8_t controller_id,
	struct dc_bios *dcb,
	enum pipe_gating_control power_gating)
{
	enum bp_result bp_result = BP_RESULT_OK;
	enum bp_pipe_control_action cntl;
	struct dc_context *ctx = dc->ctx;

	if (FUNC1(ctx->dce_environment))
		return true;

	if (power_gating == PIPE_GATING_CONTROL_INIT)
		cntl = ASIC_PIPE_INIT;
	else if (power_gating == PIPE_GATING_CONTROL_ENABLE)
		cntl = ASIC_PIPE_ENABLE;
	else
		cntl = ASIC_PIPE_DISABLE;

	if (power_gating != PIPE_GATING_CONTROL_INIT || controller_id == 0){

		bp_result = dcb->funcs->enable_disp_power_gating(
						dcb, controller_id + 1, cntl);

		/* Revert MASTER_UPDATE_MODE to 0 because bios sets it 2
		 * by default when command table is called
		 */
		FUNC3(ctx,
			FUNC0(mmCRTC_MASTER_UPDATE_MODE, controller_id),
			0);
	}

	if (power_gating != PIPE_GATING_CONTROL_ENABLE)
		FUNC2(ctx);

	if (bp_result == BP_RESULT_OK)
		return true;
	else
		return false;
}