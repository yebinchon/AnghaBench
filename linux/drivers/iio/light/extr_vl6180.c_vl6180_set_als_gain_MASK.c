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
struct vl6180_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  als_gain_milli; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  VL6180_ALS_GAIN ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * vl6180_als_gain_tab ; 
 int /*<<< orphan*/ * vl6180_als_gain_tab_bits ; 
 int FUNC4 (struct vl6180_data*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vl6180_data *data, int val, int val2)
{
	int i, ret, gain;

	if (val < 1 || val > 40)
		return -EINVAL;

	gain = (val * 1000000 + val2) / 1000;
	if (gain < 1 || gain > 40000)
		return -EINVAL;

	i = FUNC1(gain, vl6180_als_gain_tab,
			 FUNC0(vl6180_als_gain_tab));

	FUNC2(&data->lock);
	ret = FUNC4(data, true);
	if (ret < 0)
		goto fail;

	ret = FUNC5(data->client, VL6180_ALS_GAIN,
				vl6180_als_gain_tab_bits[i]);

	if (ret >= 0)
		data->als_gain_milli = vl6180_als_gain_tab[i];

fail:
	FUNC4(data, false);
	FUNC3(&data->lock);
	return ret;
}