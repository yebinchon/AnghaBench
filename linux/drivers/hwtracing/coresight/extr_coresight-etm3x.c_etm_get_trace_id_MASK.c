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
struct etm_drvdata {int traceid; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  base; int /*<<< orphan*/  mode; TYPE_2__* csdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETMTRACEIDR ; 
 int ETM_TRACEID_MASK ; 
 int FUNC2 (struct etm_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct etm_drvdata *drvdata)
{
	unsigned long flags;
	int trace_id = -1;
	struct device *etm_dev;

	if (!drvdata)
		goto out;

	etm_dev = drvdata->csdev->dev.parent;
	if (!FUNC3(&drvdata->mode))
		return drvdata->traceid;

	FUNC4(etm_dev);

	FUNC6(&drvdata->spinlock, flags);

	FUNC1(drvdata->base);
	trace_id = (FUNC2(drvdata, ETMTRACEIDR) & ETM_TRACEID_MASK);
	FUNC0(drvdata->base);

	FUNC7(&drvdata->spinlock, flags);
	FUNC5(etm_dev);

out:
	return trace_id;

}