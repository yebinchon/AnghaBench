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
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {TYPE_1__ cmd; int /*<<< orphan*/  page; } ;
struct ili9881c_instr {scalar_t__ op; TYPE_2__ arg; } ;
struct ili9881c {int /*<<< orphan*/  dsi; int /*<<< orphan*/  reset; int /*<<< orphan*/  power; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ili9881c_instr*) ; 
 scalar_t__ ILI9881C_COMMAND ; 
 scalar_t__ ILI9881C_SWITCH_PAGE ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_TEAR_MODE_VBLANK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ili9881c_instr* ili9881c_init ; 
 int FUNC2 (struct ili9881c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ili9881c*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct ili9881c* FUNC7 (struct drm_panel*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct drm_panel *panel)
{
	struct ili9881c *ctx = FUNC7(panel);
	unsigned int i;
	int ret;

	/* Power the panel */
	ret = FUNC8(ctx->power);
	if (ret)
		return ret;
	FUNC6(5);

	/* And reset it */
	FUNC1(ctx->reset, 1);
	FUNC6(20);

	FUNC1(ctx->reset, 0);
	FUNC6(20);

	for (i = 0; i < FUNC0(ili9881c_init); i++) {
		const struct ili9881c_instr *instr = &ili9881c_init[i];

		if (instr->op == ILI9881C_SWITCH_PAGE)
			ret = FUNC3(ctx, instr->arg.page);
		else if (instr->op == ILI9881C_COMMAND)
			ret = FUNC2(ctx, instr->arg.cmd.cmd,
						      instr->arg.cmd.data);

		if (ret)
			return ret;
	}

	ret = FUNC3(ctx, 0);
	if (ret)
		return ret;

	ret = FUNC5(ctx->dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
	if (ret)
		return ret;

	ret = FUNC4(ctx->dsi);
	if (ret)
		return ret;

	return 0;
}