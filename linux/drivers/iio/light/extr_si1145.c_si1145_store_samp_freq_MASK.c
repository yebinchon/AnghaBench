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
struct si1145_data {int meas_rate; int /*<<< orphan*/  lock; TYPE_1__* part_info; scalar_t__ autonomous; } ;
struct TYPE_2__ {scalar_t__ uncompressed_meas_rate; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct si1145_data*,int) ; 

__attribute__((used)) static int FUNC4(struct si1145_data *data, int val)
{
	int ret = 0;
	int meas_rate;

	if (val <= 0 || val > 32000)
		return -ERANGE;
	meas_rate = 32000 / val;

	FUNC0(&data->lock);
	if (data->autonomous) {
		ret = FUNC3(data, meas_rate);
		if (ret)
			goto out;
	}
	if (data->part_info->uncompressed_meas_rate)
		data->meas_rate = meas_rate;
	else
		data->meas_rate = FUNC2(meas_rate);

out:
	FUNC1(&data->lock);

	return ret;
}