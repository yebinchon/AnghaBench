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
struct si1145_data {int autonomous; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; int /*<<< orphan*/  meas_rate; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI1145_CMD_PSALS_AUTO ; 
 int /*<<< orphan*/  SI1145_CMD_PSALS_PAUSE ; 
 int /*<<< orphan*/  SI1145_INT_CFG_OE ; 
 int /*<<< orphan*/  SI1145_MASK_ALL_IE ; 
 int /*<<< orphan*/  SI1145_REG_INT_CFG ; 
 int /*<<< orphan*/  SI1145_REG_IRQ_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si1145_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct si1145_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct si1145_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_trigger *trig, bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct si1145_data *data = FUNC1(indio_dev);
	int err = 0, ret;

	FUNC3(&data->lock);

	if (state) {
		data->autonomous = true;
		err = FUNC0(data->client,
				SI1145_REG_INT_CFG, SI1145_INT_CFG_OE);
		if (err < 0)
			goto disable;
		err = FUNC0(data->client,
				SI1145_REG_IRQ_ENABLE, SI1145_MASK_ALL_IE);
		if (err < 0)
			goto disable;
		err = FUNC6(data, data->meas_rate);
		if (err < 0)
			goto disable;
		err = FUNC5(data, SI1145_CMD_PSALS_AUTO);
		if (err < 0)
			goto disable;
	} else {
disable:
		/* Disable as much as possible skipping errors */
		ret = FUNC5(data, SI1145_CMD_PSALS_PAUSE);
		if (ret < 0 && !err)
			err = ret;
		ret = FUNC6(data, 0);
		if (ret < 0 && !err)
			err = ret;
		ret = FUNC0(data->client,
						SI1145_REG_IRQ_ENABLE, 0);
		if (ret < 0 && !err)
			err = ret;
		ret = FUNC0(data->client,
						SI1145_REG_INT_CFG, 0);
		if (ret < 0 && !err)
			err = ret;
		data->autonomous = false;
	}

	FUNC4(&data->lock);
	return err;
}