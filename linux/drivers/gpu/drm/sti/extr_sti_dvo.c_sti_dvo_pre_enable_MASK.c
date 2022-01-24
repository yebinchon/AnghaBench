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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sti_dvo {int enabled; scalar_t__ regs; int /*<<< orphan*/  panel; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_pix; struct dvo_config* config; } ;
struct dvo_config {int lowbyte; int midbyte; int highbyte; int flags; scalar_t__ awg_fwgen_fct; } ;
struct drm_bridge {struct sti_dvo* driver_private; } ;

/* Variables and functions */
 int AWG_MAX_INST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ DVO_AWG_DIGSYNC_CTRL ; 
 scalar_t__ DVO_DOF_CFG ; 
 int DVO_DOF_EN ; 
 scalar_t__ DVO_LUT_PROG_HIGH ; 
 scalar_t__ DVO_LUT_PROG_LOW ; 
 scalar_t__ DVO_LUT_PROG_MID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_dvo*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_dvo*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct sti_dvo *dvo = bridge->driver_private;
	struct dvo_config *config = dvo->config;
	u32 val;

	FUNC0("\n");

	if (dvo->enabled)
		return;

	/* Make sure DVO is disabled */
	FUNC6(0x00000000, dvo->regs + DVO_DOF_CFG);
	FUNC6(0x00000000, dvo->regs + DVO_AWG_DIGSYNC_CTRL);

	if (config->awg_fwgen_fct) {
		u8 nb_instr;
		u32 awg_ram_code[AWG_MAX_INST];
		/* Configure AWG */
		if (!FUNC5(dvo, &nb_instr, awg_ram_code))
			FUNC4(dvo, awg_ram_code, nb_instr);
		else
			return;
	}

	/* Prepare/enable clocks */
	if (FUNC2(dvo->clk_pix))
		FUNC1("Failed to prepare/enable dvo_pix clk\n");
	if (FUNC2(dvo->clk))
		FUNC1("Failed to prepare/enable dvo clk\n");

	FUNC3(dvo->panel);

	/* Set LUT */
	FUNC6(config->lowbyte,  dvo->regs + DVO_LUT_PROG_LOW);
	FUNC6(config->midbyte,  dvo->regs + DVO_LUT_PROG_MID);
	FUNC6(config->highbyte, dvo->regs + DVO_LUT_PROG_HIGH);

	/* Digital output formatter config */
	val = (config->flags | DVO_DOF_EN);
	FUNC6(val, dvo->regs + DVO_DOF_CFG);

	dvo->enabled = true;
}