#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_rect {int x1; int y1; } ;
struct TYPE_3__ {struct drm_rect dst; } ;
struct rcar_du_plane_state {TYPE_1__ state; } ;
struct rcar_du_group {struct rcar_du_device* dev; } ;
struct rcar_du_device {TYPE_2__* info; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  PnBTR ; 
 int /*<<< orphan*/  PnDPXR ; 
 int /*<<< orphan*/  PnDPYR ; 
 int /*<<< orphan*/  PnDSXR ; 
 int /*<<< orphan*/  PnDSYR ; 
 int /*<<< orphan*/  PnMLR ; 
 int /*<<< orphan*/  PnWAMWR ; 
 int /*<<< orphan*/  PnWASPR ; 
 int FUNC0 (struct drm_rect const*) ; 
 int FUNC1 (struct drm_rect const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_group*,unsigned int,struct rcar_du_plane_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_group*,unsigned int,struct rcar_du_plane_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_du_group*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct rcar_du_group *rgrp,
				       unsigned int index,
				       const struct rcar_du_plane_state *state)
{
	struct rcar_du_device *rcdu = rgrp->dev;
	const struct drm_rect *dst = &state->state.dst;

	if (rcdu->info->gen < 3)
		FUNC2(rgrp, index, state);
	else
		FUNC3(rgrp, index, state);

	/* Destination position and size */
	FUNC4(rgrp, index, PnDSXR, FUNC1(dst));
	FUNC4(rgrp, index, PnDSYR, FUNC0(dst));
	FUNC4(rgrp, index, PnDPXR, dst->x1);
	FUNC4(rgrp, index, PnDPYR, dst->y1);

	if (rcdu->info->gen < 3) {
		/* Wrap-around and blinking, disabled */
		FUNC4(rgrp, index, PnWASPR, 0);
		FUNC4(rgrp, index, PnWAMWR, 4095);
		FUNC4(rgrp, index, PnBTR, 0);
		FUNC4(rgrp, index, PnMLR, 0);
	}
}