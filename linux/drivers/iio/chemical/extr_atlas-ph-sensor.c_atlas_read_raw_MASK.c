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
typedef  int /*<<< orphan*/  u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; int /*<<< orphan*/  address; } ;
struct atlas_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 134 
#define  IIO_CHAN_INFO_SCALE 133 
#define  IIO_CONCENTRATION 132 
#define  IIO_ELECTRICALCONDUCTIVITY 131 
#define  IIO_PH 130 
#define  IIO_TEMP 129 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_NANO ; 
#define  IIO_VOLTAGE 128 
 int FUNC0 (struct atlas_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct atlas_data* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			  struct iio_chan_spec const *chan,
			  int *val, int *val2, long mask)
{
	struct atlas_data *data = FUNC4(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW: {
		int ret;
		__be32 reg;

		switch (chan->type) {
		case IIO_TEMP:
			ret = FUNC5(data->regmap, chan->address,
					      (u8 *) &reg, sizeof(reg));
			break;
		case IIO_PH:
		case IIO_CONCENTRATION:
		case IIO_ELECTRICALCONDUCTIVITY:
		case IIO_VOLTAGE:
			ret = FUNC2(indio_dev);
			if (ret)
				return ret;

			ret = FUNC0(data, chan->address, &reg);

			FUNC3(indio_dev);
			break;
		default:
			ret = -EINVAL;
		}

		if (!ret) {
			*val = FUNC1(reg);
			ret = IIO_VAL_INT;
		}
		return ret;
	}
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_TEMP:
			*val = 10;
			return IIO_VAL_INT;
		case IIO_PH:
			*val = 1; /* 0.001 */
			*val2 = 1000;
			break;
		case IIO_ELECTRICALCONDUCTIVITY:
			*val = 1; /* 0.00001 */
			*val2 = 100000;
			break;
		case IIO_CONCENTRATION:
			*val = 0; /* 0.000000001 */
			*val2 = 1000;
			return IIO_VAL_INT_PLUS_NANO;
		case IIO_VOLTAGE:
			*val = 1; /* 0.1 */
			*val2 = 10;
			break;
		default:
			return -EINVAL;
		}
		return IIO_VAL_FRACTIONAL;
	}

	return -EINVAL;
}