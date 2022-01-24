#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {TYPE_3__* encoder; } ;
struct TYPE_7__ {int /*<<< orphan*/  mod; } ;
struct drm_display_mode {int clock; } ;
struct rcar_lvds {int mode; scalar_t__ panel; TYPE_5__* info; TYPE_4__ bridge; TYPE_6__* companion; scalar_t__ dual_link; TYPE_1__ clocks; struct drm_display_mode display_mode; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_12__ {TYPE_2__* funcs; } ;
struct TYPE_11__ {int quirks; int gen; int /*<<< orphan*/  (* pll_setup ) (struct rcar_lvds*,int) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  crtc; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* enable ) (TYPE_6__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LVDCHCR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  LVDCR0 ; 
 int LVDCR0_BEN ; 
 int LVDCR0_DUSEL ; 
 int LVDCR0_LVEN ; 
 int LVDCR0_LVMD_SHIFT ; 
 int LVDCR0_LVRES ; 
 int LVDCR0_PLLON ; 
 int LVDCR0_PWD ; 
 int /*<<< orphan*/  LVDCR1 ; 
 int FUNC1 (int) ; 
 int LVDCR1_CLKSTBY ; 
 int /*<<< orphan*/  LVDCTRCR ; 
 int LVDCTRCR_CTR0SEL_HSYNC ; 
 int LVDCTRCR_CTR1SEL_VSYNC ; 
 int LVDCTRCR_CTR2SEL_DISP ; 
 int LVDCTRCR_CTR3SEL_ZERO ; 
 int /*<<< orphan*/  LVDSTRIPE ; 
 int LVDSTRIPE_ST_ON ; 
 int RCAR_LVDS_QUIRK_DUAL_LINK ; 
 int RCAR_LVDS_QUIRK_EXT_PLL ; 
 int RCAR_LVDS_QUIRK_GEN3_LVEN ; 
 int RCAR_LVDS_QUIRK_LANES ; 
 int RCAR_LVDS_QUIRK_PWD ; 
 struct rcar_lvds* FUNC2 (struct drm_bridge*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_lvds*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (struct rcar_lvds*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct drm_bridge *bridge)
{
	struct rcar_lvds *lvds = FUNC2(bridge);
	const struct drm_display_mode *mode = &lvds->display_mode;
	u32 lvdhcr;
	u32 lvdcr0;
	int ret;

	ret = FUNC3(lvds->clocks.mod);
	if (ret < 0)
		return;

	/* Enable the companion LVDS encoder in dual-link mode. */
	if (lvds->dual_link && lvds->companion)
		lvds->companion->funcs->enable(lvds->companion);

	/*
	 * Hardcode the channels and control signals routing for now.
	 *
	 * HSYNC -> CTRL0
	 * VSYNC -> CTRL1
	 * DISP  -> CTRL2
	 * 0     -> CTRL3
	 */
	FUNC7(lvds, LVDCTRCR, LVDCTRCR_CTR3SEL_ZERO |
			LVDCTRCR_CTR2SEL_DISP | LVDCTRCR_CTR1SEL_VSYNC |
			LVDCTRCR_CTR0SEL_HSYNC);

	if (lvds->info->quirks & RCAR_LVDS_QUIRK_LANES)
		lvdhcr = FUNC0(0, 0) | FUNC0(1, 3)
		       | FUNC0(2, 2) | FUNC0(3, 1);
	else
		lvdhcr = FUNC0(0, 0) | FUNC0(1, 1)
		       | FUNC0(2, 2) | FUNC0(3, 3);

	FUNC7(lvds, LVDCHCR, lvdhcr);

	if (lvds->info->quirks & RCAR_LVDS_QUIRK_DUAL_LINK) {
		/*
		 * Configure vertical stripe based on the mode of operation of
		 * the connected device.
		 */
		FUNC7(lvds, LVDSTRIPE,
				lvds->dual_link ? LVDSTRIPE_ST_ON : 0);
	}

	/*
	 * PLL clock configuration on all instances but the companion in
	 * dual-link mode.
	 */
	if (!lvds->dual_link || lvds->companion)
		lvds->info->pll_setup(lvds, mode->clock * 1000);

	/* Set the LVDS mode and select the input. */
	lvdcr0 = lvds->mode << LVDCR0_LVMD_SHIFT;

	if (lvds->bridge.encoder) {
		/*
		 * FIXME: We should really retrieve the CRTC through the state,
		 * but how do we get a state pointer?
		 */
		if (FUNC4(lvds->bridge.encoder->crtc) == 2)
			lvdcr0 |= LVDCR0_DUSEL;
	}

	FUNC7(lvds, LVDCR0, lvdcr0);

	/* Turn all the channels on. */
	FUNC7(lvds, LVDCR1,
			FUNC1(3) | FUNC1(2) |
			FUNC1(1) | FUNC1(0) | LVDCR1_CLKSTBY);

	if (lvds->info->gen < 3) {
		/* Enable LVDS operation and turn the bias circuitry on. */
		lvdcr0 |= LVDCR0_BEN | LVDCR0_LVEN;
		FUNC7(lvds, LVDCR0, lvdcr0);
	}

	if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)) {
		/*
		 * Turn the PLL on (simple PLL only, extended PLL is fully
		 * controlled through LVDPLLCR).
		 */
		lvdcr0 |= LVDCR0_PLLON;
		FUNC7(lvds, LVDCR0, lvdcr0);
	}

	if (lvds->info->quirks & RCAR_LVDS_QUIRK_PWD) {
		/* Set LVDS normal mode. */
		lvdcr0 |= LVDCR0_PWD;
		FUNC7(lvds, LVDCR0, lvdcr0);
	}

	if (lvds->info->quirks & RCAR_LVDS_QUIRK_GEN3_LVEN) {
		/*
		 * Turn on the LVDS PHY. On D3, the LVEN and LVRES bit must be
		 * set at the same time, so don't write the register yet.
		 */
		lvdcr0 |= LVDCR0_LVEN;
		if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_PWD))
			FUNC7(lvds, LVDCR0, lvdcr0);
	}

	if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)) {
		/* Wait for the PLL startup delay (simple PLL only). */
		FUNC10(100, 150);
	}

	/* Turn the output on. */
	lvdcr0 |= LVDCR0_LVRES;
	FUNC7(lvds, LVDCR0, lvdcr0);

	if (lvds->panel) {
		FUNC6(lvds->panel);
		FUNC5(lvds->panel);
	}
}