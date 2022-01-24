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
typedef  int /*<<< orphan*/  u16 ;
struct mma9553_data {int /*<<< orphan*/  mutex; TYPE_1__* client; scalar_t__ stepcnt_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMA9551_APPID_PEDOMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mma9553_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mma9553_data *data, u16 reg,
				    u16 *tmp)
{
	bool powered_on;
	int ret;

	/*
	 * The HW only counts steps and other dependent
	 * parameters (speed, distance, calories, activity)
	 * if power is on (from enabling an event or the
	 * step counter).
	 */
	powered_on = FUNC2(data, false, 0) ||
		     data->stepcnt_enabled;
	if (!powered_on) {
		FUNC0(&data->client->dev, "No channels enabled\n");
		return -EINVAL;
	}

	FUNC3(&data->mutex);
	ret = FUNC1(data->client, MMA9551_APPID_PEDOMETER,
				       reg, tmp);
	FUNC4(&data->mutex);
	return ret;
}