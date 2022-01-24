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
typedef  int u32 ;
struct rcar_du_group {int index; int num_crtcs; struct rcar_du_device* dev; } ;
struct rcar_du_device {unsigned int num_crtcs; TYPE_1__* info; struct rcar_du_crtc* crtcs; } ;
struct rcar_du_crtc {int /*<<< orphan*/  index; } ;
struct TYPE_2__ {int gen; int lvds_clk_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIDSR ; 
 int DIDSR_CODE ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_du_group*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct rcar_du_group *rgrp)
{
	struct rcar_du_device *rcdu = rgrp->dev;
	struct rcar_du_crtc *rcrtc;
	unsigned int num_crtcs = 0;
	unsigned int i;
	u32 didsr;

	/*
	 * Configure input dot clock routing with a hardcoded configuration. If
	 * the DU channel can use the LVDS encoder output clock as the dot
	 * clock, do so. Otherwise route DU_DOTCLKINn signal to DUn.
	 *
	 * Each channel can then select between the dot clock configured here
	 * and the clock provided by the CPG through the ESCR register.
	 */
	if (rcdu->info->gen < 3 && rgrp->index == 0) {
		/*
		 * On Gen2 a single register in the first group controls dot
		 * clock selection for all channels.
		 */
		rcrtc = rcdu->crtcs;
		num_crtcs = rcdu->num_crtcs;
	} else if (rcdu->info->gen == 3 && rgrp->num_crtcs > 1) {
		/*
		 * On Gen3 dot clocks are setup through per-group registers,
		 * only available when the group has two channels.
		 */
		rcrtc = &rcdu->crtcs[rgrp->index * 2];
		num_crtcs = rgrp->num_crtcs;
	}

	if (!num_crtcs)
		return;

	didsr = DIDSR_CODE;
	for (i = 0; i < num_crtcs; ++i, ++rcrtc) {
		if (rcdu->info->lvds_clk_mask & FUNC0(rcrtc->index))
			didsr |= FUNC2(i)
			      |  FUNC3(i, 0);
		else
			didsr |= FUNC1(i)
			      |  FUNC3(i, 0);
	}

	FUNC4(rgrp, DIDSR, didsr);
}