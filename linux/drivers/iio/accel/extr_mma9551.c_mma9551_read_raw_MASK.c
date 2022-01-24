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
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ACCEL 132 
#define  IIO_CHAN_INFO_PROCESSED 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_INCLI 128 
 struct mma9551_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iio_chan_spec const*,int*,int*) ; 
 int FUNC2 (int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iio_chan_spec const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct mma9551_data *data = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		switch (chan->type) {
		case IIO_INCLI:
			FUNC4(&data->mutex);
			ret = FUNC3(data->client, chan, val);
			FUNC5(&data->mutex);
			return ret;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_ACCEL:
			FUNC4(&data->mutex);
			ret = FUNC1(data->client,
						      chan, val, val2);
			FUNC5(&data->mutex);
			return ret;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ACCEL:
			return FUNC2(val, val2);
		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}