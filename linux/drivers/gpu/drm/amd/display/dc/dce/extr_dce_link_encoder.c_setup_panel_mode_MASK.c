#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {struct dc_context* ctx; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
struct dc_context {TYPE_3__* dc; } ;
typedef  enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;
struct TYPE_5__ {scalar_t__ psp_setup_panel_mode; } ;
struct TYPE_6__ {TYPE_2__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_DPHY_INTERNAL_CTRL ; 
#define  DP_PANEL_MODE_EDP 129 
#define  DP_PANEL_MODE_SPECIAL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(
	struct dce110_link_encoder *enc110,
	enum dp_panel_mode panel_mode)
{
	uint32_t value;
	struct dc_context *ctx = enc110->base.ctx;

	/* if psp set panel mode, dal should be program it */
	if (ctx->dc->caps.psp_setup_panel_mode)
		return;

	FUNC0(FUNC1(DP_DPHY_INTERNAL_CTRL));
	value = FUNC2(DP_DPHY_INTERNAL_CTRL);

	switch (panel_mode) {
	case DP_PANEL_MODE_EDP:
		value = 0x1;
		break;
	case DP_PANEL_MODE_SPECIAL:
		value = 0x11;
		break;
	default:
		value = 0x0;
		break;
	}

	FUNC3(DP_DPHY_INTERNAL_CTRL, value);
}