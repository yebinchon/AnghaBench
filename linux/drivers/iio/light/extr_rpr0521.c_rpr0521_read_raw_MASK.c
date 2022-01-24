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
typedef  int /*<<< orphan*/  u8 ;
struct rpr0521_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  raw_data ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  address; int /*<<< orphan*/  device_mask; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  IIO_INTENSITY ; 
 int /*<<< orphan*/  IIO_PROXIMITY ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct rpr0521_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* rpr0521_data_reg ; 
 int FUNC7 (struct rpr0521_data*,size_t,int*,int*) ; 
 int FUNC8 (struct rpr0521_data*,int*) ; 
 int FUNC9 (struct rpr0521_data*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC10 (struct rpr0521_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan, int *val,
			    int *val2, long mask)
{
	struct rpr0521_data *data = FUNC2(indio_dev);
	int ret;
	int busy;
	u8 device_mask;
	__le16 raw_data;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (chan->type != IIO_INTENSITY && chan->type != IIO_PROXIMITY)
			return -EINVAL;

		busy = FUNC0(indio_dev);
		if (busy)
			return -EBUSY;

		device_mask = rpr0521_data_reg[chan->address].device_mask;

		FUNC4(&data->lock);
		ret = FUNC10(data, true, device_mask);
		if (ret < 0)
			goto rpr0521_read_raw_out;

		ret = FUNC6(data->regmap,
				       rpr0521_data_reg[chan->address].address,
				       &raw_data, sizeof(raw_data));
		if (ret < 0) {
			FUNC10(data, false, device_mask);
			goto rpr0521_read_raw_out;
		}

		ret = FUNC10(data, false, device_mask);

rpr0521_read_raw_out:
		FUNC5(&data->lock);
		FUNC1(indio_dev);
		if (ret < 0)
			return ret;

		*val = FUNC3(raw_data);

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		FUNC4(&data->lock);
		ret = FUNC7(data, chan->address, val, val2);
		FUNC5(&data->lock);
		if (ret < 0)
			return ret;

		return IIO_VAL_INT_PLUS_MICRO;

	case IIO_CHAN_INFO_SAMP_FREQ:
		FUNC4(&data->lock);
		ret = FUNC9(data, chan->type, val, val2);
		FUNC5(&data->lock);
		if (ret < 0)
			return ret;

		return IIO_VAL_INT_PLUS_MICRO;

	case IIO_CHAN_INFO_OFFSET:
		FUNC4(&data->lock);
		ret = FUNC8(data, val);
		FUNC5(&data->lock);
		if (ret < 0)
			return ret;

		return IIO_VAL_INT;

	default:
		return -EINVAL;
	}
}