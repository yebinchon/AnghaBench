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
struct etb_drvdata {scalar_t__ mode; TYPE_1__* csdev; int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CS_MODE_SYSFS ; 
 int /*<<< orphan*/  FUNC0 (struct etb_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct etb_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct etb_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct etb_drvdata *drvdata)
{
	unsigned long flags;

	FUNC4(&drvdata->spinlock, flags);
	if (drvdata->mode == CS_MODE_SYSFS) {
		FUNC0(drvdata);
		FUNC3(drvdata);
		FUNC1(drvdata);
	}
	FUNC5(&drvdata->spinlock, flags);

	FUNC2(&drvdata->csdev->dev, "ETB dumped\n");
}