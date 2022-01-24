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
struct dw_i2c_dev {int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_IC_STATUS ; 
 int DW_IC_STATUS_ACTIVITY ; 
 int ETIMEDOUT ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dw_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct dw_i2c_dev *dev)
{
	int timeout = TIMEOUT;

	while (FUNC1(dev, DW_IC_STATUS) & DW_IC_STATUS_ACTIVITY) {
		if (timeout <= 0) {
			FUNC0(dev->dev, "timeout waiting for bus ready\n");
			FUNC2(&dev->adapter);

			if (FUNC1(dev, DW_IC_STATUS) & DW_IC_STATUS_ACTIVITY)
				return -ETIMEDOUT;
			return 0;
		}
		timeout--;
		FUNC3(1000, 1100);
	}

	return 0;
}