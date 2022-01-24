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
struct device {int dummy; } ;
struct cyttsp4 {TYPE_1__* cpdata; int /*<<< orphan*/  irq; int /*<<< orphan*/  startup_work; int /*<<< orphan*/  md; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cyttsp4*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cyttsp4*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cyttsp4*) ; 
 int /*<<< orphan*/  FUNC5 (struct cyttsp4*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 

int FUNC9(struct cyttsp4 *cd)
{
	struct device *dev = cd->dev;

	FUNC2(&cd->md);

	/*
	 * Suspend the device before freeing the startup_work and stopping
	 * the watchdog since sleep function restarts watchdog on failure
	 */
	FUNC7(dev);
	FUNC6(dev);

	FUNC0(&cd->startup_work);

	FUNC3(cd);

	FUNC4(cd->irq, cd);
	if (cd->cpdata->init)
		cd->cpdata->init(cd->cpdata, 0, dev);
	FUNC1(cd);
	FUNC5(cd);
	return 0;
}