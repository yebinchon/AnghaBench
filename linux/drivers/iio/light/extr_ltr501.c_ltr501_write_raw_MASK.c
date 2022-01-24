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
struct ltr501_data {int als_contr; int ps_contr; int /*<<< orphan*/  ps_period; int /*<<< orphan*/  als_period; int /*<<< orphan*/  lock_als; int /*<<< orphan*/  regmap; struct ltr501_chip_info* chip_info; } ;
struct ltr501_chip_info {int als_gain_mask; int als_gain_shift; int /*<<< orphan*/  ps_gain_tbl_size; int /*<<< orphan*/  ps_gain; int /*<<< orphan*/  als_gain_tbl_size; int /*<<< orphan*/  als_gain; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 132 
#define  IIO_CHAN_INFO_SAMP_FREQ 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_INTENSITY 129 
#define  IIO_PROXIMITY 128 
 int /*<<< orphan*/  LTR501_ALS_CONTR ; 
 int LTR501_CONTR_PS_GAIN_MASK ; 
 int LTR501_CONTR_PS_GAIN_SHIFT ; 
 int /*<<< orphan*/  LTR501_PS_CONTR ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct ltr501_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct ltr501_data*,int*,int*) ; 
 int FUNC4 (struct ltr501_data*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct ltr501_data*,int*,int*) ; 
 int FUNC7 (struct ltr501_data*,int,int) ; 
 int FUNC8 (struct ltr501_data*,int) ; 
 int FUNC9 (struct ltr501_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct ltr501_data *data = FUNC2(indio_dev);
	int i, ret, freq_val, freq_val2;
	struct ltr501_chip_info *info = data->chip_info;

	ret = FUNC0(indio_dev);
	if (ret)
		return ret;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_INTENSITY:
			i = FUNC5(info->als_gain,
						  info->als_gain_tbl_size,
						  val, val2);
			if (i < 0) {
				ret = -EINVAL;
				break;
			}

			data->als_contr &= ~info->als_gain_mask;
			data->als_contr |= i << info->als_gain_shift;

			ret = FUNC12(data->regmap, LTR501_ALS_CONTR,
					   data->als_contr);
			break;
		case IIO_PROXIMITY:
			i = FUNC5(info->ps_gain,
						  info->ps_gain_tbl_size,
						  val, val2);
			if (i < 0) {
				ret = -EINVAL;
				break;
			}
			data->ps_contr &= ~LTR501_CONTR_PS_GAIN_MASK;
			data->ps_contr |= i << LTR501_CONTR_PS_GAIN_SHIFT;

			ret = FUNC12(data->regmap, LTR501_PS_CONTR,
					   data->ps_contr);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;

	case IIO_CHAN_INFO_INT_TIME:
		switch (chan->type) {
		case IIO_INTENSITY:
			if (val != 0) {
				ret = -EINVAL;
				break;
			}
			FUNC10(&data->lock_als);
			ret = FUNC8(data, val2);
			FUNC11(&data->lock_als);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;

	case IIO_CHAN_INFO_SAMP_FREQ:
		switch (chan->type) {
		case IIO_INTENSITY:
			ret = FUNC3(data, &freq_val,
							&freq_val2);
			if (ret < 0)
				break;

			ret = FUNC4(data, val, val2);
			if (ret < 0)
				break;

			/* update persistence count when changing frequency */
			ret = FUNC9(data, chan->type,
						     0, data->als_period);

			if (ret < 0)
				ret = FUNC4(data, freq_val,
								 freq_val2);
			break;
		case IIO_PROXIMITY:
			ret = FUNC6(data, &freq_val,
						       &freq_val2);
			if (ret < 0)
				break;

			ret = FUNC7(data, val, val2);
			if (ret < 0)
				break;

			/* update persistence count when changing frequency */
			ret = FUNC9(data, chan->type,
						     0, data->ps_period);

			if (ret < 0)
				ret = FUNC7(data, freq_val,
								freq_val2);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;

	default:
		ret = -EINVAL;
		break;
	}

	FUNC1(indio_dev);
	return ret;
}