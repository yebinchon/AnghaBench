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
struct cdn_dp_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct cdn_dp_device*,int) ; 
 struct cdn_dp_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data,
				     bool enable)
{
	struct cdn_dp_device *dp = FUNC1(dev);
	int ret;

	FUNC2(&dp->lock);
	if (!dp->active) {
		ret = -ENODEV;
		goto out;
	}

	ret = FUNC0(dp, enable);

out:
	FUNC3(&dp->lock);
	return ret;
}