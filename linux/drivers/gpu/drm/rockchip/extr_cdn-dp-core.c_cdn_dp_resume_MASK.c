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
struct cdn_dp_device {int suspended; int /*<<< orphan*/  lock; int /*<<< orphan*/  event_work; scalar_t__ fw_loaded; } ;

/* Variables and functions */
 struct cdn_dp_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct device *dev)
{
	struct cdn_dp_device *dp = FUNC0(dev);

	FUNC1(&dp->lock);
	dp->suspended = false;
	if (dp->fw_loaded)
		FUNC3(&dp->event_work);
	FUNC2(&dp->lock);

	return 0;
}