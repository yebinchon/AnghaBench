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
struct dc_state {int /*<<< orphan*/  res_ctx; } ;
struct dc {TYPE_2__* clk_mgr; int /*<<< orphan*/  res_pool; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_clocks ) (TYPE_2__*,struct dc_state*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct dc_state*,int) ; 

void FUNC2(
		struct dc *dc,
		struct dc_state *context)
{
	FUNC0(&context->res_ctx, dc->res_pool);

	dc->clk_mgr->funcs->update_clocks(
			dc->clk_mgr,
			context,
			true);
}