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
struct mma9551_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_INCLI 128 
 int /*<<< orphan*/  MMA9551_APPID_TILT ; 
 int /*<<< orphan*/  MMA9551_TILT_ANG_THRESH_MASK ; 
 int /*<<< orphan*/  MMA9551_TILT_CFG_REG ; 
 struct mma9551_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				     const struct iio_chan_spec *chan,
				     enum iio_event_type type,
				     enum iio_event_direction dir,
				     enum iio_event_info info,
				     int val, int val2)
{
	struct mma9551_data *data = FUNC0(indio_dev);
	int ret;

	switch (chan->type) {
	case IIO_INCLI:
		if (val2 != 0 || val < 1 || val > 10)
			return -EINVAL;
		FUNC2(&data->mutex);
		ret = FUNC1(data->client,
						 MMA9551_APPID_TILT,
						 MMA9551_TILT_CFG_REG,
						 MMA9551_TILT_ANG_THRESH_MASK,
						 val);
		FUNC3(&data->mutex);
		return ret;
	default:
		return -EINVAL;
	}
}