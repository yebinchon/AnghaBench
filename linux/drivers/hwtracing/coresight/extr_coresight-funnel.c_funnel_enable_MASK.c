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
struct funnel_drvdata {scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 struct funnel_drvdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct funnel_drvdata*,int) ; 

__attribute__((used)) static int FUNC3(struct coresight_device *csdev, int inport,
			 int outport)
{
	int rc = 0;
	struct funnel_drvdata *drvdata = FUNC1(csdev->dev.parent);

	if (drvdata->base)
		rc = FUNC2(drvdata, inport);

	if (!rc)
		FUNC0(&csdev->dev, "FUNNEL inport %d enabled\n", inport);
	return rc;
}