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
struct s3c_hwmon {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			     struct s3c_hwmon *hwmon, int channel)
{
	int ret;

	ret = FUNC1(&hwmon->lock);
	if (ret < 0)
		return ret;

	FUNC0(dev, "reading channel %d\n", channel);

	ret = FUNC3(hwmon->client, channel);
	FUNC2(&hwmon->lock);

	return ret;
}