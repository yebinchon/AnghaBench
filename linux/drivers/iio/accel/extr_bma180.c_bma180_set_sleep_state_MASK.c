#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bma180_data {int sleep_state; TYPE_2__* client; TYPE_1__* part_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  sleep_mask; int /*<<< orphan*/  sleep_reg; } ;

/* Variables and functions */
 int FUNC0 (struct bma180_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC2(struct bma180_data *data, bool state)
{
	int ret = FUNC0(data, data->part_info->sleep_reg,
		data->part_info->sleep_mask, state);

	if (ret) {
		FUNC1(&data->client->dev,
			"failed to set sleep state %d\n", state);
		return ret;
	}
	data->sleep_state = state;

	return 0;
}