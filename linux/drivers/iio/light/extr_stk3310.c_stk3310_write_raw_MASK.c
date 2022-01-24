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
struct stk3310_data {int /*<<< orphan*/  lock; TYPE_1__* client; int /*<<< orphan*/  reg_ps_gain; int /*<<< orphan*/  reg_als_gain; int /*<<< orphan*/  reg_ps_it; int /*<<< orphan*/  reg_als_it; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_SCALE 128 
 scalar_t__ IIO_LIGHT ; 
 scalar_t__ IIO_PROXIMITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct stk3310_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stk3310_it_table ; 
 int /*<<< orphan*/  stk3310_scale_table ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	int ret;
	int index;
	struct stk3310_data *data = FUNC2(indio_dev);

	if (chan->type != IIO_LIGHT && chan->type != IIO_PROXIMITY)
		return -EINVAL;

	switch (mask) {
	case IIO_CHAN_INFO_INT_TIME:
		index = FUNC6(stk3310_it_table,
					  FUNC0(stk3310_it_table),
					  val, val2);
		if (index < 0)
			return -EINVAL;
		FUNC3(&data->lock);
		if (chan->type == IIO_LIGHT)
			ret = FUNC5(data->reg_als_it, index);
		else
			ret = FUNC5(data->reg_ps_it, index);
		if (ret < 0)
			FUNC1(&data->client->dev,
				"sensor configuration failed\n");
		FUNC4(&data->lock);
		return ret;

	case IIO_CHAN_INFO_SCALE:
		index = FUNC6(stk3310_scale_table,
					  FUNC0(stk3310_scale_table),
					  val, val2);
		if (index < 0)
			return -EINVAL;
		FUNC3(&data->lock);
		if (chan->type == IIO_LIGHT)
			ret = FUNC5(data->reg_als_gain, index);
		else
			ret = FUNC5(data->reg_ps_gain, index);
		if (ret < 0)
			FUNC1(&data->client->dev,
				"sensor configuration failed\n");
		FUNC4(&data->lock);
		return ret;
	}

	return -EINVAL;
}