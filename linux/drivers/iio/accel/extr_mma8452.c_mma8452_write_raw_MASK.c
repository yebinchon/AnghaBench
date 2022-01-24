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
struct mma8452_data {int ctrl_reg1; int data_cfg; int /*<<< orphan*/  sleep_val; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ scan_index; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 132 
#define  IIO_CHAN_INFO_HIGH_PASS_FILTER_3DB_FREQUENCY 131 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int MMA8452_CTRL_DR_MASK ; 
 int MMA8452_CTRL_DR_SHIFT ; 
 scalar_t__ MMA8452_CTRL_REG1 ; 
 scalar_t__ MMA8452_DATA_CFG ; 
 int MMA8452_DATA_CFG_FS_MASK ; 
 int MMA8452_DATA_CFG_HPF_MASK ; 
 scalar_t__ MMA8452_OFF_X ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct mma8452_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mma8452_data*) ; 
 int FUNC5 (struct mma8452_data*,scalar_t__,int) ; 
 int FUNC6 (struct mma8452_data*) ; 
 int FUNC7 (struct mma8452_data*,int,int) ; 
 int FUNC8 (struct mma8452_data*,int,int) ; 
 int** mma8452_os_ratio ; 
 int FUNC9 (struct mma8452_data*,int,int) ; 
 int FUNC10 (struct mma8452_data*,int) ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct mma8452_data *data = FUNC3(indio_dev);
	int i, ret;

	ret = FUNC1(indio_dev);
	if (ret)
		return ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		i = FUNC7(data, val, val2);
		if (i < 0) {
			ret = i;
			break;
		}
		data->ctrl_reg1 &= ~MMA8452_CTRL_DR_MASK;
		data->ctrl_reg1 |= i << MMA8452_CTRL_DR_SHIFT;

		data->sleep_val = FUNC4(data);

		ret = FUNC5(data, MMA8452_CTRL_REG1,
					    data->ctrl_reg1);
		break;
	case IIO_CHAN_INFO_SCALE:
		i = FUNC8(data, val, val2);
		if (i < 0) {
			ret = i;
			break;
		}

		data->data_cfg &= ~MMA8452_DATA_CFG_FS_MASK;
		data->data_cfg |= i;

		ret = FUNC5(data, MMA8452_DATA_CFG,
					    data->data_cfg);
		break;
	case IIO_CHAN_INFO_CALIBBIAS:
		if (val < -128 || val > 127) {
			ret = -EINVAL;
			break;
		}

		ret = FUNC5(data,
					    MMA8452_OFF_X + chan->scan_index,
					    val);
		break;

	case IIO_CHAN_INFO_HIGH_PASS_FILTER_3DB_FREQUENCY:
		if (val == 0 && val2 == 0) {
			data->data_cfg &= ~MMA8452_DATA_CFG_HPF_MASK;
		} else {
			data->data_cfg |= MMA8452_DATA_CFG_HPF_MASK;
			ret = FUNC9(data, val, val2);
			if (ret < 0)
				break;
		}

		ret = FUNC5(data, MMA8452_DATA_CFG,
					     data->data_cfg);
		break;

	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		ret = FUNC6(data);

		for (i = 0; i < FUNC0(mma8452_os_ratio); i++) {
			if (mma8452_os_ratio[i][ret] == val) {
				ret = FUNC10(data, i);
				break;
			}
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC2(indio_dev);
	return ret;
}