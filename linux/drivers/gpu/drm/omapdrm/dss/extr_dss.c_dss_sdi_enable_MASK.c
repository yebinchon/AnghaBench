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
struct dss_device {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSS_PLL_CONTROL ; 
 int /*<<< orphan*/  DSS_SDI_STATUS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct dss_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct dss_device*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct dss_device *dss)
{
	unsigned long timeout;

	FUNC3(dss->dispc, 1);

	/* Reset SDI PLL */
	FUNC1(dss, DSS_PLL_CONTROL, 1, 18, 18); /* SDI_PLL_SYSRESET */
	FUNC7(1);	/* wait 2x PCLK */

	/* Lock SDI PLL */
	FUNC1(dss, DSS_PLL_CONTROL, 1, 28, 28); /* SDI_PLL_GOBIT */

	/* Waiting for PLL lock request to complete */
	timeout = jiffies + FUNC5(500);
	while (FUNC4(dss, DSS_SDI_STATUS) & (1 << 6)) {
		if (FUNC6(jiffies, timeout)) {
			FUNC0("PLL lock request timed out\n");
			goto err1;
		}
	}

	/* Clearing PLL_GO bit */
	FUNC1(dss, DSS_PLL_CONTROL, 0, 28, 28);

	/* Waiting for PLL to lock */
	timeout = jiffies + FUNC5(500);
	while (!(FUNC4(dss, DSS_SDI_STATUS) & (1 << 5))) {
		if (FUNC6(jiffies, timeout)) {
			FUNC0("PLL lock timed out\n");
			goto err1;
		}
	}

	FUNC2(dss->dispc, 1);

	/* Waiting for SDI reset to complete */
	timeout = jiffies + FUNC5(500);
	while (!(FUNC4(dss, DSS_SDI_STATUS) & (1 << 2))) {
		if (FUNC6(jiffies, timeout)) {
			FUNC0("SDI reset timed out\n");
			goto err2;
		}
	}

	return 0;

 err2:
	FUNC2(dss->dispc, 0);
 err1:
	/* Reset SDI PLL */
	FUNC1(dss, DSS_PLL_CONTROL, 0, 18, 18); /* SDI_PLL_SYSRESET */

	FUNC3(dss->dispc, 0);

	return -ETIMEDOUT;
}