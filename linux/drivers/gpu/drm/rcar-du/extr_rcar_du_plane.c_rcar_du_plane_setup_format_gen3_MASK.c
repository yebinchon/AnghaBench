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
struct rcar_du_plane_state {TYPE_1__* format; } ;
struct rcar_du_group {int dummy; } ;
struct TYPE_2__ {int pnmr; int edf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PnDDCR4 ; 
 int PnDDCR4_CODE ; 
 int /*<<< orphan*/  PnMR ; 
 int PnMR_SPIM_TP_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_du_group*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct rcar_du_group *rgrp,
					    unsigned int index,
					    const struct rcar_du_plane_state *state)
{
	FUNC0(rgrp, index, PnMR,
			    PnMR_SPIM_TP_OFF | state->format->pnmr);

	FUNC0(rgrp, index, PnDDCR4,
			    state->format->edf | PnDDCR4_CODE);
}