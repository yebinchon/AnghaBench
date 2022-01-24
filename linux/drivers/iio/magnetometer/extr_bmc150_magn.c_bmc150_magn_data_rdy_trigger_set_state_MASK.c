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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bmc150_magn_data {int dready_trigger_on; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_MAGN_MASK_DRDY_EN ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_INT_DRDY ; 
 int BMC150_MAGN_SHIFT_DRDY_EN ; 
 int FUNC0 (struct bmc150_magn_data*) ; 
 struct bmc150_magn_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iio_trigger *trig,
						  bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct bmc150_magn_data *data = FUNC1(indio_dev);
	int ret = 0;

	FUNC3(&data->mutex);
	if (state == data->dready_trigger_on)
		goto err_unlock;

	ret = FUNC5(data->regmap, BMC150_MAGN_REG_INT_DRDY,
				 BMC150_MAGN_MASK_DRDY_EN,
				 state << BMC150_MAGN_SHIFT_DRDY_EN);
	if (ret < 0)
		goto err_unlock;

	data->dready_trigger_on = state;

	if (state) {
		ret = FUNC0(data);
		if (ret < 0)
			goto err_unlock;
	}
	FUNC4(&data->mutex);

	return 0;

err_unlock:
	FUNC4(&data->mutex);
	return ret;
}