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
struct sti_dvo {int enabled; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_pix; int /*<<< orphan*/  panel; scalar_t__ regs; TYPE_1__* config; } ;
struct drm_bridge {struct sti_dvo* driver_private; } ;
struct TYPE_2__ {scalar_t__ awg_fwgen_fct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DVO_AWG_DIGSYNC_CTRL ; 
 scalar_t__ DVO_DOF_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct sti_dvo *dvo = bridge->driver_private;

	if (!dvo->enabled)
		return;

	FUNC0("\n");

	if (dvo->config->awg_fwgen_fct)
		FUNC3(0x00000000, dvo->regs + DVO_AWG_DIGSYNC_CTRL);

	FUNC3(0x00000000, dvo->regs + DVO_DOF_CFG);

	FUNC2(dvo->panel);

	/* Disable/unprepare dvo clock */
	FUNC1(dvo->clk_pix);
	FUNC1(dvo->clk);

	dvo->enabled = false;
}