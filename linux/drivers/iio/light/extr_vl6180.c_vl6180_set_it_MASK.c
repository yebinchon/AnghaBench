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
struct vl6180_data {int als_it_ms; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VL6180_ALS_IT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vl6180_data*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct vl6180_data *data, int val, int val2)
{
	int ret, it_ms;

	it_ms = (val2 + 500) / 1000; /* round to ms */
	if (val != 0 || it_ms < 1 || it_ms > 512)
		return -EINVAL;

	FUNC0(&data->lock);
	ret = FUNC2(data, true);
	if (ret < 0)
		goto fail;

	ret = FUNC3(data->client, VL6180_ALS_IT, it_ms - 1);

	if (ret >= 0)
		data->als_it_ms = it_ms;

fail:
	FUNC2(data, false);
	FUNC1(&data->lock);

	return ret;
}