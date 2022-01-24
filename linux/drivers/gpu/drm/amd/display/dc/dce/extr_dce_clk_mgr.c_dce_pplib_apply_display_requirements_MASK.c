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
struct dm_pp_display_configuration {int /*<<< orphan*/  avail_mclk_switch_time_us; } ;
struct dc_state {struct dm_pp_display_configuration pp_display_cfg; } ;
struct dc {int /*<<< orphan*/  ctx; TYPE_1__* current_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  pp_display_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_state*,struct dm_pp_display_configuration*) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_pp_display_configuration*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct dm_pp_display_configuration*,int) ; 

__attribute__((used)) static void FUNC4(
	struct dc *dc,
	struct dc_state *context)
{
	struct dm_pp_display_configuration *pp_display_cfg = &context->pp_display_cfg;

	pp_display_cfg->avail_mclk_switch_time_us = FUNC1(context);

	FUNC0(context, pp_display_cfg);

	if (FUNC3(&dc->current_state->pp_display_cfg, pp_display_cfg, sizeof(*pp_display_cfg)) !=  0)
		FUNC2(dc->ctx, pp_display_cfg);
}