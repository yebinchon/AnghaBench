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
struct rm3100_data {int conversion_time; int /*<<< orphan*/  lock; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {scalar_t__ currentmode; int* active_scan_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INDIO_BUFFER_TRIGGERED ; 
 int RM3100_CMM_AXIS_SHIFT ; 
 int RM3100_CMM_START ; 
 int /*<<< orphan*/  RM3100_REG_CC_X ; 
 int /*<<< orphan*/  RM3100_REG_CMM ; 
 int /*<<< orphan*/  RM3100_REG_TMRC ; 
 int RM3100_SAMP_NUM ; 
 int RM3100_TMRC_OFFSET ; 
 struct rm3100_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int** rm3100_samp_rates ; 
 int FUNC5 (struct rm3100_data*,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev, int val, int val2)
{
	struct rm3100_data *data = FUNC0(indio_dev);
	struct regmap *regmap = data->regmap;
	unsigned int cycle_count;
	int ret;
	int i;

	FUNC1(&data->lock);
	/* All cycle count registers use the same value. */
	ret = FUNC3(regmap, RM3100_REG_CC_X, &cycle_count);
	if (ret < 0)
		goto unlock_return;

	for (i = 0; i < RM3100_SAMP_NUM; i++) {
		if (val == rm3100_samp_rates[i][0] &&
		    val2 == rm3100_samp_rates[i][1])
			break;
	}
	if (i == RM3100_SAMP_NUM) {
		ret = -EINVAL;
		goto unlock_return;
	}

	ret = FUNC4(regmap, RM3100_REG_TMRC, i + RM3100_TMRC_OFFSET);
	if (ret < 0)
		goto unlock_return;

	/* Checking if cycle count registers need changing. */
	if (val == 600 && cycle_count == 200) {
		ret = FUNC5(data, 100);
		if (ret < 0)
			goto unlock_return;
	} else if (val != 600 && cycle_count == 100) {
		ret = FUNC5(data, 200);
		if (ret < 0)
			goto unlock_return;
	}

	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
		/* Writing TMRC registers requires CMM reset. */
		ret = FUNC4(regmap, RM3100_REG_CMM, 0);
		if (ret < 0)
			goto unlock_return;
		ret = FUNC4(data->regmap, RM3100_REG_CMM,
			(*indio_dev->active_scan_mask & 0x7) <<
			RM3100_CMM_AXIS_SHIFT | RM3100_CMM_START);
		if (ret < 0)
			goto unlock_return;
	}
	FUNC2(&data->lock);

	data->conversion_time = rm3100_samp_rates[i][2] * 2;
	return 0;

unlock_return:
	FUNC2(&data->lock);
	return ret;
}