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
struct tegra_windowgroup {scalar_t__ usecount; int /*<<< orphan*/  lock; int /*<<< orphan*/  rst; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tegra_windowgroup *wgrp)
{
	FUNC0(&wgrp->lock);

	if (wgrp->usecount == 0) {
		FUNC2(wgrp->parent);
		FUNC3(wgrp->rst);
	}

	wgrp->usecount++;
	FUNC1(&wgrp->lock);

	return 0;
}