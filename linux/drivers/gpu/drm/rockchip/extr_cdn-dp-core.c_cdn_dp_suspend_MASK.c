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
struct cdn_dp_device {int suspended; int /*<<< orphan*/  lock; scalar_t__ active; } ;

/* Variables and functions */
 int FUNC0 (struct cdn_dp_device*) ; 
 struct cdn_dp_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct device *dev)
{
	struct cdn_dp_device *dp = FUNC1(dev);
	int ret = 0;

	FUNC2(&dp->lock);
	if (dp->active)
		ret = FUNC0(dp);
	dp->suspended = true;
	FUNC3(&dp->lock);

	return ret;
}