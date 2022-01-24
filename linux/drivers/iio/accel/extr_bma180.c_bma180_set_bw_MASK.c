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
struct bma180_data {int bw; TYPE_1__* client; TYPE_2__* part_info; scalar_t__ sleep_state; } ;
struct TYPE_4__ {int num_bw; int* bw_table; int /*<<< orphan*/  bw_mask; int /*<<< orphan*/  bw_reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (struct bma180_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct bma180_data *data, int val)
{
	int ret, i;

	if (data->sleep_state)
		return -EBUSY;

	for (i = 0; i < data->part_info->num_bw; ++i) {
		if (data->part_info->bw_table[i] == val) {
			ret = FUNC0(data, data->part_info->bw_reg,
				data->part_info->bw_mask, i);
			if (ret) {
				FUNC1(&data->client->dev,
					"failed to set bandwidth\n");
				return ret;
			}
			data->bw = val;
			return 0;
		}
	}

	return -EINVAL;
}