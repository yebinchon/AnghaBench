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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CYAPA_CMD_DEV_STATUS ; 
 int /*<<< orphan*/  CYAPA_CMD_SOFT_RESET ; 
 int CYAPA_DEV_NORMAL ; 
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  OP_RECALIBRATION_MASK ; 
 int FUNC0 (struct cyapa*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct cyapa* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned long) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct cyapa *cyapa = FUNC4(dev);
	unsigned long timeout;
	int ret;

	ret = FUNC0(cyapa, CYAPA_CMD_DEV_STATUS);
	if (ret < 0) {
		FUNC3(dev, "Error reading dev status: %d\n", ret);
		goto out;
	}
	if ((ret & CYAPA_DEV_NORMAL) != CYAPA_DEV_NORMAL) {
		FUNC5(dev, "Trackpad device is busy, device state: 0x%02x\n",
			 ret);
		ret = -EAGAIN;
		goto out;
	}

	ret = FUNC1(cyapa, CYAPA_CMD_SOFT_RESET,
			       OP_RECALIBRATION_MASK);
	if (ret < 0) {
		FUNC3(dev, "Failed to send calibrate command: %d\n",
			ret);
		goto out;
	}

	/* max recalibration timeout 2s. */
	timeout = jiffies + 2 * HZ;
	do {
		/*
		 * For this recalibration, the max time will not exceed 2s.
		 * The average time is approximately 500 - 700 ms, and we
		 * will check the status every 100 - 200ms.
		 */
		FUNC6(100);
		ret = FUNC0(cyapa, CYAPA_CMD_DEV_STATUS);
		if (ret < 0) {
			FUNC3(dev, "Error reading dev status: %d\n", ret);
			goto out;
		}
		if ((ret & CYAPA_DEV_NORMAL) == CYAPA_DEV_NORMAL) {
			FUNC2(dev, "Calibration successful.\n");
			goto out;
		}
	} while (FUNC7(timeout));

	FUNC3(dev, "Failed to calibrate. Timeout.\n");
	ret = -ETIMEDOUT;

out:
	return ret < 0 ? ret : count;
}