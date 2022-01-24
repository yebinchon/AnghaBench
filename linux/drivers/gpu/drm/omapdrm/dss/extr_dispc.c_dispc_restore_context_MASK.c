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
struct dispc_device {int /*<<< orphan*/  ctx_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  CONFIG2 ; 
 int /*<<< orphan*/  CONFIG3 ; 
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  CONTROL2 ; 
 int /*<<< orphan*/  CONTROL3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  DISPC_IRQ_SYNC_LOST_DIGIT ; 
 int /*<<< orphan*/  DIVISOR ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FEAT_ALPHA_FIXED_ZORDER ; 
 int /*<<< orphan*/  FEAT_ALPHA_FREE_ZORDER ; 
 int /*<<< orphan*/  FEAT_ATTR2 ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_CPR ; 
 int /*<<< orphan*/  FEAT_FIR_COEF_V ; 
 int /*<<< orphan*/  FEAT_HANDLE_UV_SEPARATE ; 
 int /*<<< orphan*/  FEAT_MGR_LCD2 ; 
 int /*<<< orphan*/  FEAT_MGR_LCD3 ; 
 int /*<<< orphan*/  FEAT_PRELOAD ; 
 int /*<<< orphan*/  GLOBAL_ALPHA ; 
 int /*<<< orphan*/  IRQENABLE ; 
 int /*<<< orphan*/  LINE_NUMBER ; 
 int OMAP_DSS_CHANNEL_DIGIT ; 
 int OMAP_DSS_GFX ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 
 int /*<<< orphan*/  FUNC26 (int,int) ; 
 int /*<<< orphan*/  FUNC27 (int,int) ; 
 int /*<<< orphan*/  FUNC28 (int,int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (int) ; 
 int /*<<< orphan*/  FUNC43 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int FUNC44 (struct dispc_device*) ; 
 int FUNC45 (struct dispc_device*) ; 
 scalar_t__ FUNC46 (struct dispc_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC47(struct dispc_device *dispc)
{
	int i, j;

	FUNC8("dispc_restore_context\n");

	if (!dispc->ctx_valid)
		return;

	/*RR(dispc, IRQENABLE);*/
	/*RR(dispc, CONTROL);*/
	FUNC38(dispc, CONFIG);
	FUNC38(dispc, LINE_NUMBER);
	if (FUNC46(dispc, FEAT_ALPHA_FIXED_ZORDER) ||
			FUNC46(dispc, FEAT_ALPHA_FREE_ZORDER))
		FUNC38(dispc, GLOBAL_ALPHA);
	if (FUNC46(dispc, FEAT_MGR_LCD2))
		FUNC38(dispc, CONFIG2);
	if (FUNC46(dispc, FEAT_MGR_LCD3))
		FUNC38(dispc, CONFIG3);

	for (i = 0; i < FUNC44(dispc); i++) {
		FUNC38(dispc, FUNC6(i));
		FUNC38(dispc, FUNC42(i));
		FUNC38(dispc, FUNC39(i));
		if (i == OMAP_DSS_CHANNEL_DIGIT)
			continue;
		FUNC38(dispc, FUNC40(i));
		FUNC38(dispc, FUNC41(i));
		FUNC38(dispc, FUNC37(i));
		FUNC38(dispc, FUNC7(i));

		FUNC38(dispc, FUNC3(i));
		FUNC38(dispc, FUNC4(i));
		FUNC38(dispc, FUNC5(i));

		if (FUNC46(dispc, FEAT_CPR)) {
			FUNC38(dispc, FUNC2(i));
			FUNC38(dispc, FUNC1(i));
			FUNC38(dispc, FUNC0(i));
		}
	}

	for (i = 0; i < FUNC45(dispc); i++) {
		FUNC38(dispc, FUNC15(i));
		FUNC38(dispc, FUNC17(i));
		FUNC38(dispc, FUNC31(i));
		FUNC38(dispc, FUNC34(i));
		FUNC38(dispc, FUNC13(i));
		FUNC38(dispc, FUNC20(i));
		FUNC38(dispc, FUNC33(i));
		FUNC38(dispc, FUNC30(i));
		if (FUNC46(dispc, FEAT_PRELOAD))
			FUNC38(dispc, FUNC32(i));
		if (i == OMAP_DSS_GFX) {
			FUNC38(dispc, FUNC36(i));
			FUNC38(dispc, FUNC35(i));
			continue;
		}
		FUNC38(dispc, FUNC21(i));
		FUNC38(dispc, FUNC29(i));
		FUNC38(dispc, FUNC9(i));
		FUNC38(dispc, FUNC10(i));

		for (j = 0; j < 8; j++)
			FUNC38(dispc, FUNC23(i, j));

		for (j = 0; j < 8; j++)
			FUNC38(dispc, FUNC25(i, j));

		for (j = 0; j < 5; j++)
			FUNC38(dispc, FUNC19(i, j));

		if (FUNC46(dispc, FEAT_FIR_COEF_V)) {
			for (j = 0; j < 8; j++)
				FUNC38(dispc, FUNC27(i, j));
		}

		if (FUNC46(dispc, FEAT_HANDLE_UV_SEPARATE)) {
			FUNC38(dispc, FUNC16(i));
			FUNC38(dispc, FUNC18(i));
			FUNC38(dispc, FUNC22(i));
			FUNC38(dispc, FUNC11(i));
			FUNC38(dispc, FUNC12(i));

			for (j = 0; j < 8; j++)
				FUNC38(dispc, FUNC24(i, j));

			for (j = 0; j < 8; j++)
				FUNC38(dispc, FUNC26(i, j));

			for (j = 0; j < 8; j++)
				FUNC38(dispc, FUNC28(i, j));
		}
		if (FUNC46(dispc, FEAT_ATTR2))
			FUNC38(dispc, FUNC14(i));
	}

	if (FUNC46(dispc, FEAT_CORE_CLK_DIV))
		FUNC38(dispc, DIVISOR);

	/* enable last, because LCD & DIGIT enable are here */
	FUNC38(dispc, CONTROL);
	if (FUNC46(dispc, FEAT_MGR_LCD2))
		FUNC38(dispc, CONTROL2);
	if (FUNC46(dispc, FEAT_MGR_LCD3))
		FUNC38(dispc, CONTROL3);
	/* clear spurious SYNC_LOST_DIGIT interrupts */
	FUNC43(dispc, DISPC_IRQ_SYNC_LOST_DIGIT);

	/*
	 * enable last so IRQs won't trigger before
	 * the context is fully restored
	 */
	FUNC38(dispc, IRQENABLE);

	FUNC8("context restored\n");
}