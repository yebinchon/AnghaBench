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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct adjd_s311_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ADJD_S311_CAP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ADJD_S311_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_HARDWAREGAIN 130 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adjd_s311_data* FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	struct adjd_s311_data *data = FUNC6(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC3(indio_dev,
			FUNC1(chan->address), val);
		if (ret < 0)
			return ret;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_HARDWAREGAIN:
		ret = FUNC4(data->client,
			FUNC0(chan->address));
		if (ret < 0)
			return ret;
		*val = ret & ADJD_S311_CAP_MASK;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_INT_TIME:
		ret = FUNC5(data->client,
			FUNC2(chan->address));
		if (ret < 0)
			return ret;
		*val = 0;
		/*
		 * not documented, based on measurement:
		 * 4095 LSBs correspond to roughly 4 ms
		 */
		*val2 = ret & ADJD_S311_INT_MASK;
		return IIO_VAL_INT_PLUS_MICRO;
	}
	return -EINVAL;
}