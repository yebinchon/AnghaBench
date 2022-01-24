#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sirf_data {int active; TYPE_1__* serdev; int /*<<< orphan*/  power_wait; int /*<<< orphan*/  wakeup; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct sirf_data*,int,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sirf_data *data, bool active,
					unsigned long timeout)
{
	int ret;

	if (!data->wakeup)
		return FUNC2(data, active, timeout);

	ret = FUNC3(data->power_wait,
			data->active == active, FUNC1(timeout));
	if (ret < 0)
		return ret;

	if (ret == 0) {
		FUNC0(&data->serdev->dev, "timeout waiting for active state = %d\n",
				active);
		return -ETIMEDOUT;
	}

	return 0;
}