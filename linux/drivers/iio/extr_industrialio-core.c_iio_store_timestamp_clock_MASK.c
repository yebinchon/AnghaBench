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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_BOOTTIME ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_COARSE ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  CLOCK_REALTIME_COARSE ; 
 int /*<<< orphan*/  CLOCK_TAI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t len)
{
	clockid_t clk;
	int ret;

	if (FUNC2(buf, "realtime"))
		clk = CLOCK_REALTIME;
	else if (FUNC2(buf, "monotonic"))
		clk = CLOCK_MONOTONIC;
	else if (FUNC2(buf, "monotonic_raw"))
		clk = CLOCK_MONOTONIC_RAW;
	else if (FUNC2(buf, "realtime_coarse"))
		clk = CLOCK_REALTIME_COARSE;
	else if (FUNC2(buf, "monotonic_coarse"))
		clk = CLOCK_MONOTONIC_COARSE;
	else if (FUNC2(buf, "boottime"))
		clk = CLOCK_BOOTTIME;
	else if (FUNC2(buf, "tai"))
		clk = CLOCK_TAI;
	else
		return -EINVAL;

	ret = FUNC1(FUNC0(dev), clk);
	if (ret)
		return ret;

	return len;
}