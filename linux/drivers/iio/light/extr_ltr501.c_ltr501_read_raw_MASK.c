#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ltr501_data {int als_contr; int ps_contr; TYPE_3__* chip_info; int /*<<< orphan*/  lock_ps; int /*<<< orphan*/  lock_als; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {int als_gain_mask; int als_gain_shift; TYPE_2__* ps_gain; TYPE_1__* als_gain; } ;
struct TYPE_5__ {int scale; int uscale; } ;
struct TYPE_4__ {int scale; int uscale; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 135 
#define  IIO_CHAN_INFO_PROCESSED 134 
#define  IIO_CHAN_INFO_RAW 133 
#define  IIO_CHAN_INFO_SAMP_FREQ 132 
#define  IIO_CHAN_INFO_SCALE 131 
#define  IIO_INTENSITY 130 
#define  IIO_LIGHT 129 
#define  IIO_PROXIMITY 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int /*<<< orphan*/  LTR501_ALS_DATA1 ; 
 int LTR501_CONTR_PS_GAIN_MASK ; 
 int LTR501_CONTR_PS_GAIN_SHIFT ; 
 int LTR501_PS_DATA_MASK ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct ltr501_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ltr501_data*,int*,int*) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (struct ltr501_data*,int*,int*) ; 
 int FUNC7 (struct ltr501_data*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ltr501_data*,int*,int*) ; 
 int FUNC9 (struct ltr501_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	struct ltr501_data *data = FUNC2(indio_dev);
	__le16 buf[2];
	int ret, i;

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		switch (chan->type) {
		case IIO_LIGHT:
			ret = FUNC0(indio_dev);
			if (ret)
				return ret;

			FUNC10(&data->lock_als);
			ret = FUNC7(data, buf);
			FUNC11(&data->lock_als);
			FUNC1(indio_dev);
			if (ret < 0)
				return ret;
			*val = FUNC5(FUNC3(buf[1]),
						    FUNC3(buf[0]));
			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_RAW:
		ret = FUNC0(indio_dev);
		if (ret)
			return ret;

		switch (chan->type) {
		case IIO_INTENSITY:
			FUNC10(&data->lock_als);
			ret = FUNC7(data, buf);
			FUNC11(&data->lock_als);
			if (ret < 0)
				break;
			*val = FUNC3(chan->address == LTR501_ALS_DATA1 ?
					   buf[0] : buf[1]);
			ret = IIO_VAL_INT;
			break;
		case IIO_PROXIMITY:
			FUNC10(&data->lock_ps);
			ret = FUNC9(data);
			FUNC11(&data->lock_ps);
			if (ret < 0)
				break;
			*val = ret & LTR501_PS_DATA_MASK;
			ret = IIO_VAL_INT;
			break;
		default:
			ret = -EINVAL;
			break;
		}

		FUNC1(indio_dev);
		return ret;

	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_INTENSITY:
			i = (data->als_contr & data->chip_info->als_gain_mask)
			     >> data->chip_info->als_gain_shift;
			*val = data->chip_info->als_gain[i].scale;
			*val2 = data->chip_info->als_gain[i].uscale;
			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_PROXIMITY:
			i = (data->ps_contr & LTR501_CONTR_PS_GAIN_MASK) >>
				LTR501_CONTR_PS_GAIN_SHIFT;
			*val = data->chip_info->ps_gain[i].scale;
			*val2 = data->chip_info->ps_gain[i].uscale;
			return IIO_VAL_INT_PLUS_MICRO;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_INT_TIME:
		switch (chan->type) {
		case IIO_INTENSITY:
			return FUNC8(data, val, val2);
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_SAMP_FREQ:
		switch (chan->type) {
		case IIO_INTENSITY:
			return FUNC4(data, val, val2);
		case IIO_PROXIMITY:
			return FUNC6(data, val, val2);
		default:
			return -EINVAL;
		}
	}
	return -EINVAL;
}