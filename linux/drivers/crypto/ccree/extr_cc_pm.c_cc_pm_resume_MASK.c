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
 int EBUSY ; 
 int /*<<< orphan*/  HOST_POWER_DOWN_EN ; 
 int /*<<< orphan*/  POWER_DOWN_DISABLE ; 
 int FUNC1 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_drvdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 struct cc_drvdata* FUNC9 (struct device*) ; 
 int FUNC10 (struct cc_drvdata*,int) ; 

int FUNC11(struct device *dev)
{
	int rc;
	struct cc_drvdata *drvdata = FUNC9(dev);

	FUNC7(dev, "unset HOST_POWER_DOWN_EN\n");
	/* Enables the device source clk */
	rc = FUNC1(drvdata);
	if (rc) {
		FUNC8(dev, "failed getting clock back on. We're toast.\n");
		return rc;
	}
	/* wait for Crytpcell reset completion */
	if (!FUNC6(drvdata)) {
		FUNC8(dev, "Cryptocell reset not completed");
		return -EBUSY;
	}

	FUNC3(drvdata, FUNC0(HOST_POWER_DOWN_EN), POWER_DOWN_DISABLE);
	rc = FUNC10(drvdata, false);
	if (rc) {
		FUNC8(dev, "init_cc_regs (%x)\n", rc);
		return rc;
	}
	/* check if tee fips error occurred during power down */
	FUNC5(drvdata);

	rc = FUNC4(drvdata);
	if (rc) {
		FUNC8(dev, "cc_resume_req_queue (%x)\n", rc);
		return rc;
	}

	/* must be after the queue resuming as it uses the HW queue*/
	FUNC2(drvdata);

	return 0;
}