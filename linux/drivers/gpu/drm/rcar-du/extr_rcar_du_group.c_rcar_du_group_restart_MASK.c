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
struct rcar_du_group {int need_restart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_du_group*,int) ; 

void FUNC1(struct rcar_du_group *rgrp)
{
	rgrp->need_restart = false;

	FUNC0(rgrp, false);
	FUNC0(rgrp, true);
}