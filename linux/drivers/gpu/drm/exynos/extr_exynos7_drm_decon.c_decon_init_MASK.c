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
typedef  int u32 ;
struct decon_context {scalar_t__ regs; int /*<<< orphan*/  i80_if; } ;

/* Variables and functions */
 scalar_t__ VCLKCON0 ; 
 int VCLKCON0_CLKVALUP ; 
 int VCLKCON0_VCLKFREE ; 
 scalar_t__ VIDCON0 ; 
 int VIDCON0_SWRESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int VIDCON1_VCLK_HOLD ; 
 scalar_t__ VIDOUTCON0 ; 
 int VIDOUTCON0_DISP_IF_0_ON ; 
 int VIDOUTCON0_RGBIF ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct decon_context *ctx)
{
	u32 val;

	FUNC1(VIDCON0_SWRESET, ctx->regs + VIDCON0);

	val = VIDOUTCON0_DISP_IF_0_ON;
	if (!ctx->i80_if)
		val |= VIDOUTCON0_RGBIF;
	FUNC1(val, ctx->regs + VIDOUTCON0);

	FUNC1(VCLKCON0_CLKVALUP | VCLKCON0_VCLKFREE, ctx->regs + VCLKCON0);

	if (!ctx->i80_if)
		FUNC1(VIDCON1_VCLK_HOLD, ctx->regs + FUNC0(0));
}