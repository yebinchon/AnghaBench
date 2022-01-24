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
struct iio_chan_spec {int /*<<< orphan*/  channel2; } ;
struct bmc150_magn_data {int max_odr; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_DATAMASK ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_XY ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_Z ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 132 
#define  IIO_CHAN_INFO_SAMP_FREQ 131 
#define  IIO_MOD_X 130 
#define  IIO_MOD_Y 129 
#define  IIO_MOD_Z 128 
 int FUNC2 (struct bmc150_magn_data*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bmc150_magn_data*,int) ; 
 struct bmc150_magn_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
				 struct iio_chan_spec const *chan,
				 int val, int val2, long mask)
{
	struct bmc150_magn_data *data = FUNC4(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		if (val > data->max_odr)
			return -EINVAL;
		FUNC5(&data->mutex);
		ret = FUNC3(data, val);
		FUNC6(&data->mutex);
		return ret;
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		switch (chan->channel2) {
		case IIO_MOD_X:
		case IIO_MOD_Y:
			if (val < 1 || val > 511)
				return -EINVAL;
			FUNC5(&data->mutex);
			ret = FUNC2(data, val, 0, 0);
			if (ret < 0) {
				FUNC6(&data->mutex);
				return ret;
			}
			ret = FUNC7(data->regmap,
						 BMC150_MAGN_REG_REP_XY,
						 BMC150_MAGN_REG_REP_DATAMASK,
						 FUNC0
						 (val));
			FUNC6(&data->mutex);
			return ret;
		case IIO_MOD_Z:
			if (val < 1 || val > 256)
				return -EINVAL;
			FUNC5(&data->mutex);
			ret = FUNC2(data, 0, val, 0);
			if (ret < 0) {
				FUNC6(&data->mutex);
				return ret;
			}
			ret = FUNC7(data->regmap,
						 BMC150_MAGN_REG_REP_Z,
						 BMC150_MAGN_REG_REP_DATAMASK,
						 FUNC1
						 (val));
			FUNC6(&data->mutex);
			return ret;
		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}