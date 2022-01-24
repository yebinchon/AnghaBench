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
struct decon_context {int out_type; scalar_t__ addr; int /*<<< orphan*/  vblank_lock; scalar_t__ frame_id; } ;

/* Variables and functions */
 int CMU_CLKGAGE_MODE_MEM_F ; 
 int CMU_CLKGAGE_MODE_SFR_F ; 
 int CRCCTRL_CRCCLKEN ; 
 int CRCCTRL_CRCEN ; 
 int CRCCTRL_CRCSTART_F ; 
 int /*<<< orphan*/  DECON_CMU ; 
 scalar_t__ DECON_CRCCTRL ; 
 scalar_t__ DECON_VIDCON0 ; 
 scalar_t__ DECON_VIDCON1 ; 
 int IFTYPE_HDMI ; 
 int VIDCON0_CLKVALUP ; 
 int VIDCON0_STOP_STATUS ; 
 int VIDCON0_SWRESET ; 
 int VIDCON0_VLCKFREE ; 
 int VIDCON1_VCLK_RUN_VDEN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct decon_context*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct decon_context *ctx)
{
	unsigned long flags;
	u32 val;
	int ret;

	FUNC5(0, ctx->addr + DECON_VIDCON0);
	FUNC2(ctx->addr + DECON_VIDCON0, val,
			   ~val & VIDCON0_STOP_STATUS, 12, 20000);

	FUNC5(VIDCON0_SWRESET, ctx->addr + DECON_VIDCON0);
	ret = FUNC2(ctx->addr + DECON_VIDCON0, val,
				 ~val & VIDCON0_SWRESET, 12, 20000);

	FUNC0(ret < 0, "failed to software reset DECON\n");

	FUNC3(&ctx->vblank_lock, flags);
	ctx->frame_id = 0;
	FUNC4(&ctx->vblank_lock, flags);

	if (!(ctx->out_type & IFTYPE_HDMI))
		return;

	FUNC5(VIDCON0_CLKVALUP | VIDCON0_VLCKFREE, ctx->addr + DECON_VIDCON0);
	FUNC1(ctx, DECON_CMU,
		       CMU_CLKGAGE_MODE_SFR_F | CMU_CLKGAGE_MODE_MEM_F, ~0);
	FUNC5(VIDCON1_VCLK_RUN_VDEN_DISABLE, ctx->addr + DECON_VIDCON1);
	FUNC5(CRCCTRL_CRCEN | CRCCTRL_CRCSTART_F | CRCCTRL_CRCCLKEN,
	       ctx->addr + DECON_CRCCTRL);
}