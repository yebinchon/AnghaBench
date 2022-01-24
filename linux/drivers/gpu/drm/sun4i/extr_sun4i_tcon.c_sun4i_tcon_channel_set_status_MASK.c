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
struct sun4i_tcon {struct clk* sclk1; int /*<<< orphan*/  regs; TYPE_1__* quirks; struct clk* dclk; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_channel_1; int /*<<< orphan*/  has_channel_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_TCON_ENABLE ; 
 int /*<<< orphan*/  SUN4I_TCON1_CTL_REG ; 
 int /*<<< orphan*/  SUN4I_TCON1_CTL_TCON_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sun4i_tcon *tcon, int channel,
					  bool enabled)
{
	struct clk *clk;

	switch (channel) {
	case 0:
		FUNC1(!tcon->quirks->has_channel_0);
		FUNC6(tcon->regs, SUN4I_TCON0_CTL_REG,
				   SUN4I_TCON0_CTL_TCON_ENABLE,
				   enabled ? SUN4I_TCON0_CTL_TCON_ENABLE : 0);
		clk = tcon->dclk;
		break;
	case 1:
		FUNC1(!tcon->quirks->has_channel_1);
		FUNC6(tcon->regs, SUN4I_TCON1_CTL_REG,
				   SUN4I_TCON1_CTL_TCON_ENABLE,
				   enabled ? SUN4I_TCON1_CTL_TCON_ENABLE : 0);
		clk = tcon->sclk1;
		break;
	default:
		FUNC0("Unknown channel... doing nothing\n");
		return;
	}

	if (enabled) {
		FUNC3(clk);
		FUNC4(clk);
	} else {
		FUNC5(clk);
		FUNC2(clk);
	}
}