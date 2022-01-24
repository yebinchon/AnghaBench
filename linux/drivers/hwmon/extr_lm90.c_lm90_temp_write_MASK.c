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
typedef  int u32 ;
struct lm90_data {int /*<<< orphan*/  update_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  REMOTE_OFFSET ; 
 struct lm90_data* FUNC0 (struct device*) ; 
#define  hwmon_temp_crit 133 
#define  hwmon_temp_crit_hyst 132 
#define  hwmon_temp_emergency 131 
#define  hwmon_temp_max 130 
#define  hwmon_temp_min 129 
#define  hwmon_temp_offset 128 
 int FUNC1 (struct lm90_data*,int /*<<< orphan*/ ,long) ; 
 int FUNC2 (struct lm90_data*,int /*<<< orphan*/ ,long) ; 
 int FUNC3 (struct lm90_data*,long) ; 
 int /*<<< orphan*/ * lm90_temp_crit_index ; 
 int /*<<< orphan*/ * lm90_temp_emerg_index ; 
 int /*<<< orphan*/ * lm90_temp_max_index ; 
 int /*<<< orphan*/ * lm90_temp_min_index ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, u32 attr, int channel, long val)
{
	struct lm90_data *data = FUNC0(dev);
	int err;

	FUNC5(&data->update_lock);

	err = FUNC4(dev);
	if (err)
		goto error;

	switch (attr) {
	case hwmon_temp_min:
		if (channel == 0)
			err = FUNC2(data,
					      lm90_temp_min_index[channel],
					      val);
		else
			err = FUNC1(data,
					      lm90_temp_min_index[channel],
					      val);
		break;
	case hwmon_temp_max:
		if (channel == 0)
			err = FUNC2(data,
					     lm90_temp_max_index[channel],
					     val);
		else
			err = FUNC1(data,
					      lm90_temp_max_index[channel],
					      val);
		break;
	case hwmon_temp_crit:
		err = FUNC2(data, lm90_temp_crit_index[channel], val);
		break;
	case hwmon_temp_crit_hyst:
		err = FUNC3(data, val);
		break;
	case hwmon_temp_emergency:
		err = FUNC2(data, lm90_temp_emerg_index[channel], val);
		break;
	case hwmon_temp_offset:
		err = FUNC1(data, REMOTE_OFFSET, val);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}
error:
	FUNC6(&data->update_lock);

	return err;
}