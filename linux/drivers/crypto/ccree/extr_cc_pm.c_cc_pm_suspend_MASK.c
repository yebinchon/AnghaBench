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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_POWER_DOWN_EN ; 
 int /*<<< orphan*/  POWER_DOWN_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_drvdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct cc_drvdata* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_drvdata*) ; 

int FUNC8(struct device *dev)
{
	struct cc_drvdata *drvdata = FUNC6(dev);
	int rc;

	FUNC4(dev, "set HOST_POWER_DOWN_EN\n");
	rc = FUNC3(drvdata);
	if (rc) {
		FUNC5(dev, "cc_suspend_req_queue (%x)\n", rc);
		return rc;
	}
	FUNC7(drvdata);
	FUNC2(drvdata, FUNC0(HOST_POWER_DOWN_EN), POWER_DOWN_ENABLE);
	FUNC1(drvdata);
	return 0;
}