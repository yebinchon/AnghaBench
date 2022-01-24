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
struct tegra_windowgroup {int usecount; int /*<<< orphan*/  lock; int /*<<< orphan*/  parent; int /*<<< orphan*/  index; int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tegra_windowgroup *wgrp)
{
	int err;

	FUNC0(&wgrp->lock);

	if (wgrp->usecount == 1) {
		err = FUNC4(wgrp->rst);
		if (err < 0) {
			FUNC3("failed to assert reset for window group %u\n",
			       wgrp->index);
		}

		FUNC2(wgrp->parent);
	}

	wgrp->usecount--;
	FUNC1(&wgrp->lock);
}