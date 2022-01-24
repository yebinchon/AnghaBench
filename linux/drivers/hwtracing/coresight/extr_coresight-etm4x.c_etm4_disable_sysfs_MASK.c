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
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct etmv4_drvdata* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  etm4_disable_hw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct etmv4_drvdata*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct coresight_device *csdev)
{
	struct etmv4_drvdata *drvdata = FUNC3(csdev->dev.parent);

	/*
	 * Taking hotplug lock here protects from clocks getting disabled
	 * with tracing being left on (crash scenario) if user disable occurs
	 * after cpu online mask indicates the cpu is offline but before the
	 * DYING hotplug callback is serviced by the ETM driver.
	 */
	FUNC0();
	FUNC5(&drvdata->spinlock);

	/*
	 * Executing etm4_disable_hw on the cpu whose ETM is being disabled
	 * ensures that register writes occur when cpu is powered.
	 */
	FUNC4(drvdata->cpu, etm4_disable_hw, drvdata, 1);

	FUNC6(&drvdata->spinlock);
	FUNC1();

	FUNC2(&csdev->dev, "ETM tracing disabled\n");
}