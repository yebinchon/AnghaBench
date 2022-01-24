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
struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct cc_drvdata* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 

int FUNC5(struct device *dev)
{
	int rc = 0;
	struct cc_drvdata *drvdata = FUNC2(dev);

	if (!FUNC0(drvdata)) {
		FUNC3(dev);
		rc = FUNC4(dev);
	} else {
		/* Something wrong happens*/
		FUNC1(dev, "request to suspend already suspended queue");
		rc = -EBUSY;
	}
	return rc;
}