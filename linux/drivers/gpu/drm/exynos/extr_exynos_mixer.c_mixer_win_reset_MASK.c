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
struct mixer_context {int /*<<< orphan*/  reg_slock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXR_BG_COLOR0 ; 
 int /*<<< orphan*/  MXR_BG_COLOR1 ; 
 int /*<<< orphan*/  MXR_BG_COLOR2 ; 
 int /*<<< orphan*/  MXR_BIT_VP_ENABLED ; 
 int /*<<< orphan*/  MXR_CFG ; 
 int /*<<< orphan*/  MXR_CFG_DST_HDMI ; 
 int /*<<< orphan*/  MXR_CFG_DST_MASK ; 
 int /*<<< orphan*/  MXR_CFG_GRP0_ENABLE ; 
 int /*<<< orphan*/  MXR_CFG_GRP1_ENABLE ; 
 int /*<<< orphan*/  MXR_CFG_OUT_MASK ; 
 int /*<<< orphan*/  MXR_CFG_OUT_RGB888 ; 
 int /*<<< orphan*/  MXR_CFG_VP_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MXR_LAYER_CFG ; 
 int /*<<< orphan*/  MXR_STATUS ; 
 int /*<<< orphan*/  MXR_STATUS_16_BURST ; 
 int /*<<< orphan*/  MXR_STATUS_BURST_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct mixer_context*) ; 

__attribute__((used)) static void FUNC9(struct mixer_context *ctx)
{
	unsigned long flags;

	FUNC4(&ctx->reg_slock, flags);

	FUNC3(ctx, MXR_CFG, MXR_CFG_DST_HDMI, MXR_CFG_DST_MASK);

	/* set output in RGB888 mode */
	FUNC3(ctx, MXR_CFG, MXR_CFG_OUT_RGB888, MXR_CFG_OUT_MASK);

	/* 16 beat burst in DMA */
	FUNC3(ctx, MXR_STATUS, MXR_STATUS_16_BURST,
		MXR_STATUS_BURST_MASK);

	/* reset default layer priority */
	FUNC2(ctx, MXR_LAYER_CFG, 0);

	/* set all background colors to RGB (0,0,0) */
	FUNC2(ctx, MXR_BG_COLOR0, FUNC1(0, 128, 128));
	FUNC2(ctx, MXR_BG_COLOR1, FUNC1(0, 128, 128));
	FUNC2(ctx, MXR_BG_COLOR2, FUNC1(0, 128, 128));

	if (FUNC6(MXR_BIT_VP_ENABLED, &ctx->flags)) {
		/* configuration of Video Processor Registers */
		FUNC8(ctx);
		FUNC7(ctx);
	}

	/* disable all layers */
	FUNC3(ctx, MXR_CFG, 0, MXR_CFG_GRP0_ENABLE);
	FUNC3(ctx, MXR_CFG, 0, MXR_CFG_GRP1_ENABLE);
	if (FUNC6(MXR_BIT_VP_ENABLED, &ctx->flags))
		FUNC3(ctx, MXR_CFG, 0, MXR_CFG_VP_ENABLE);

	/* set all source image offsets to zero */
	FUNC2(ctx, FUNC0(0), 0);
	FUNC2(ctx, FUNC0(1), 0);

	FUNC5(&ctx->reg_slock, flags);
}