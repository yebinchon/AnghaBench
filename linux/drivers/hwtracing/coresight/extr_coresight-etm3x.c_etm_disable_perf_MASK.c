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
struct etm_drvdata {scalar_t__ cpu; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct etm_drvdata* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct etm_drvdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct etm_drvdata*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct coresight_device *csdev)
{
	struct etm_drvdata *drvdata = FUNC4(csdev->dev.parent);

	if (FUNC2(drvdata->cpu != FUNC7()))
		return;

	FUNC1(drvdata->base);

	/* Setting the prog bit disables tracing immediately */
	FUNC5(drvdata);

	/*
	 * There is no way to know when the tracer will be used again so
	 * power down the tracer.
	 */
	FUNC6(drvdata);
	FUNC3(drvdata->base);

	FUNC0(drvdata->base);
}