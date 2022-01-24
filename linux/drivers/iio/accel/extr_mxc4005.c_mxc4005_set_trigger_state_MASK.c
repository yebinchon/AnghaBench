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
struct mxc4005_data {int trigger_enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC4005_REG_INT_MASK1 ; 
 int /*<<< orphan*/  MXC4005_REG_INT_MASK1_BIT_DRDYE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mxc4005_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_trigger *trig,
				     bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct mxc4005_data *data = FUNC1(indio_dev);
	int ret;

	FUNC3(&data->mutex);
	if (state) {
		ret = FUNC5(data->regmap, MXC4005_REG_INT_MASK1,
				   MXC4005_REG_INT_MASK1_BIT_DRDYE);
	} else {
		ret = FUNC5(data->regmap, MXC4005_REG_INT_MASK1,
				   ~MXC4005_REG_INT_MASK1_BIT_DRDYE);
	}

	if (ret < 0) {
		FUNC4(&data->mutex);
		FUNC0(data->dev, "failed to update reg_int_mask1");
		return ret;
	}

	data->trigger_enabled = state;
	FUNC4(&data->mutex);

	return 0;
}