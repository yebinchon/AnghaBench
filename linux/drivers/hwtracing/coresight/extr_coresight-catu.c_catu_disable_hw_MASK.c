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
struct catu_drvdata {int /*<<< orphan*/  base; TYPE_1__* csdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct catu_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct catu_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 

__attribute__((used)) static int FUNC5(struct catu_drvdata *drvdata)
{
	int rc = 0;
	struct device *dev = &drvdata->csdev->dev;

	FUNC1(drvdata, 0);
	FUNC2(drvdata->base);
	if (FUNC0(drvdata)) {
		FUNC4(dev, "Timeout while waiting for READY\n");
		rc = -EAGAIN;
	}

	FUNC3(dev, "Disabled\n");
	return rc;
}