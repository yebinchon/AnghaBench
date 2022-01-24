#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rcar_du_group {TYPE_3__* planes; struct rcar_du_device* dev; } ;
struct rcar_du_device {int /*<<< orphan*/  dev; TYPE_4__* info; int /*<<< orphan*/  ddev; struct rcar_du_crtc* crtcs; } ;
struct drm_crtc {int dummy; } ;
struct rcar_du_crtc {unsigned int mmio_offset; unsigned int index; int dsysr; size_t vsp_pipe; TYPE_2__* vsp; struct rcar_du_group* group; struct rcar_du_device* dev; int /*<<< orphan*/  vblank_lock; int /*<<< orphan*/  vblank_wait; int /*<<< orphan*/  flip_wait; struct clk* extclock; struct clk* clock; struct drm_crtc crtc; } ;
struct platform_device {int dummy; } ;
struct drm_plane {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_8__ {int dpll_mask; int gen; } ;
struct TYPE_7__ {struct drm_plane plane; } ;
struct TYPE_6__ {TYPE_1__* planes; } ;
struct TYPE_5__ {struct drm_plane plane; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int DSYSR_DRES ; 
 int DSYSR_TVM_TVSYNC ; 
#define  DU0_REG_OFFSET 131 
#define  DU1_REG_OFFSET 130 
#define  DU2_REG_OFFSET 129 
#define  DU3_REG_OFFSET 128 
 int EPROBE_DEFER ; 
 unsigned int IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  RCAR_DU_FEATURE_CRTC_IRQ_CLOCK ; 
 int /*<<< orphan*/  RCAR_DU_FEATURE_VSP1_SOURCE ; 
 int /*<<< orphan*/  crtc_funcs_gen2 ; 
 int /*<<< orphan*/  crtc_funcs_gen3 ; 
 int /*<<< orphan*/  crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct drm_crtc*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  rcar_du_crtc_irq ; 
 scalar_t__ FUNC13 (struct rcar_du_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,unsigned int) ; 
 struct platform_device* FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct rcar_du_group *rgrp, unsigned int swindex,
			unsigned int hwindex)
{
	static const unsigned int mmio_offsets[] = {
		DU0_REG_OFFSET, DU1_REG_OFFSET, DU2_REG_OFFSET, DU3_REG_OFFSET
	};

	struct rcar_du_device *rcdu = rgrp->dev;
	struct platform_device *pdev = FUNC16(rcdu->dev);
	struct rcar_du_crtc *rcrtc = &rcdu->crtcs[swindex];
	struct drm_crtc *crtc = &rcrtc->crtc;
	struct drm_plane *primary;
	unsigned int irqflags;
	struct clk *clk;
	char clk_name[9];
	char *name;
	int irq;
	int ret;

	/* Get the CRTC clock and the optional external clock. */
	if (FUNC13(rcdu, RCAR_DU_FEATURE_CRTC_IRQ_CLOCK)) {
		FUNC15(clk_name, "du.%u", hwindex);
		name = clk_name;
	} else {
		name = NULL;
	}

	rcrtc->clock = FUNC5(rcdu->dev, name);
	if (FUNC1(rcrtc->clock)) {
		FUNC3(rcdu->dev, "no clock for DU channel %u\n", hwindex);
		return FUNC2(rcrtc->clock);
	}

	FUNC15(clk_name, "dclkin.%u", hwindex);
	clk = FUNC5(rcdu->dev, clk_name);
	if (!FUNC1(clk)) {
		rcrtc->extclock = clk;
	} else if (FUNC2(clk) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	} else if (rcdu->info->dpll_mask & FUNC0(hwindex)) {
		/*
		 * DU channels that have a display PLL can't use the internal
		 * system clock and thus require an external clock.
		 */
		ret = FUNC2(clk);
		FUNC3(rcdu->dev, "can't get dclkin.%u: %d\n", hwindex, ret);
		return ret;
	}

	FUNC10(&rcrtc->flip_wait);
	FUNC10(&rcrtc->vblank_wait);
	FUNC14(&rcrtc->vblank_lock);

	rcrtc->dev = rcdu;
	rcrtc->group = rgrp;
	rcrtc->mmio_offset = mmio_offsets[hwindex];
	rcrtc->index = hwindex;
	rcrtc->dsysr = (rcrtc->index % 2 ? 0 : DSYSR_DRES) | DSYSR_TVM_TVSYNC;

	if (FUNC13(rcdu, RCAR_DU_FEATURE_VSP1_SOURCE))
		primary = &rcrtc->vsp->planes[rcrtc->vsp_pipe].plane;
	else
		primary = &rgrp->planes[swindex % 2].plane;

	ret = FUNC8(rcdu->ddev, crtc, primary, NULL,
					rcdu->info->gen <= 2 ?
					&crtc_funcs_gen2 : &crtc_funcs_gen3,
					NULL);
	if (ret < 0)
		return ret;

	FUNC7(crtc, &crtc_helper_funcs);

	/* Start with vertical blanking interrupt reporting disabled. */
	FUNC9(crtc);

	/* Register the interrupt handler. */
	if (FUNC13(rcdu, RCAR_DU_FEATURE_CRTC_IRQ_CLOCK)) {
		/* The IRQ's are associated with the CRTC (sw)index. */
		irq = FUNC11(pdev, swindex);
		irqflags = 0;
	} else {
		irq = FUNC11(pdev, 0);
		irqflags = IRQF_SHARED;
	}

	if (irq < 0) {
		FUNC3(rcdu->dev, "no IRQ for CRTC %u\n", swindex);
		return irq;
	}

	ret = FUNC6(rcdu->dev, irq, rcar_du_crtc_irq, irqflags,
			       FUNC4(rcdu->dev), rcrtc);
	if (ret < 0) {
		FUNC3(rcdu->dev,
			"failed to register IRQ for CRTC %u\n", swindex);
		return ret;
	}

	FUNC12(rcrtc);

	return 0;
}