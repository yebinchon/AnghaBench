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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  filter; } ;
struct mma9553_data {int /*<<< orphan*/  mutex; TYPE_1__ conf; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMA9553_MASK_CONF_MALE ; 
 int /*<<< orphan*/  MMA9553_REG_CONF_FILTER ; 
 struct mma9553_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct mma9553_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
					const struct iio_chan_spec *chan,
					unsigned int mode)
{
	struct mma9553_data *data = FUNC0(indio_dev);
	u8 gender = !mode;
	int ret;

	if ((mode != 0) && (mode != 1))
		return -EINVAL;
	FUNC2(&data->mutex);
	ret = FUNC1(data, MMA9553_REG_CONF_FILTER,
				 &data->conf.filter, gender,
				 MMA9553_MASK_CONF_MALE);
	FUNC3(&data->mutex);

	return ret;
}