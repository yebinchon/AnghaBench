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
struct xps2data {int /*<<< orphan*/  dev; int /*<<< orphan*/  base_address; int /*<<< orphan*/  serio; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xps2data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 struct xps2data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *of_dev)
{
	struct xps2data *drvdata = FUNC4(of_dev);
	struct resource r_mem; /* IO mem resources */

	FUNC7(drvdata->serio);
	FUNC1(drvdata->base_address);

	/* Get iospace of the device */
	if (FUNC3(of_dev->dev.of_node, 0, &r_mem))
		FUNC0(drvdata->dev, "invalid address\n");
	else
		FUNC5(r_mem.start, FUNC6(&r_mem));

	FUNC2(drvdata);

	return 0;
}