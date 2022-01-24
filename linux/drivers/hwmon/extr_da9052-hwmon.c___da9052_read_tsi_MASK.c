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
struct da9052_hwmon {int /*<<< orphan*/  tsidone; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct da9052_hwmon*,int) ; 
 int FUNC1 (struct da9052_hwmon*,int) ; 
 struct da9052_hwmon* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, int channel)
{
	struct da9052_hwmon *hwmon = FUNC2(dev);
	int ret;

	FUNC4(&hwmon->tsidone);

	ret = FUNC1(hwmon, channel);
	if (ret < 0)
		return ret;

	/* Wait for an conversion done interrupt */
	if (!FUNC5(&hwmon->tsidone,
					 FUNC3(500)))
		return -ETIMEDOUT;

	return FUNC0(hwmon, channel);
}