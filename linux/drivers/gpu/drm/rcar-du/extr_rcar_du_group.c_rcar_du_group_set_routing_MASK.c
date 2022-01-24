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
struct rcar_du_group {int index; struct rcar_du_device* dev; } ;
struct rcar_du_device {int dpad1_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  DORCR ; 
 int DORCR_DK2S ; 
 int DORCR_PG2D_DS1 ; 
 int DORCR_PG2D_DS2 ; 
 int DORCR_PG2D_MASK ; 
 int DORCR_PG2T ; 
 int FUNC0 (struct rcar_du_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_du_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_group*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rcar_du_device*) ; 

int FUNC4(struct rcar_du_group *rgrp)
{
	struct rcar_du_device *rcdu = rgrp->dev;
	u32 dorcr = FUNC0(rgrp, DORCR);

	dorcr &= ~(DORCR_PG2T | DORCR_DK2S | DORCR_PG2D_MASK);

	/*
	 * Set the DPAD1 pins sources. Select CRTC 0 if explicitly requested and
	 * CRTC 1 in all other cases to avoid cloning CRTC 0 to DPAD0 and DPAD1
	 * by default.
	 */
	if (rcdu->dpad1_source == rgrp->index * 2)
		dorcr |= DORCR_PG2D_DS1;
	else
		dorcr |= DORCR_PG2T | DORCR_DK2S | DORCR_PG2D_DS2;

	FUNC2(rgrp, DORCR, dorcr);

	FUNC1(rgrp);

	return FUNC3(rgrp->dev);
}