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
struct adxl345_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  accel ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
#define  ADXL345 133 
 unsigned int ADXL345_BASE_RATE_NANO_HZ ; 
 unsigned int ADXL345_BW_RATE ; 
 int /*<<< orphan*/  ADXL345_REG_BW_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  ADXL375 132 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int /*<<< orphan*/  NHZ_PER_HZ ; 
 int adxl345_uscale ; 
 int adxl375_uscale ; 
 int FUNC2 (long long,int /*<<< orphan*/ ,int*) ; 
 struct adxl345_data* FUNC3 (struct iio_dev*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (unsigned int,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct adxl345_data *data = FUNC3(indio_dev);
	__le16 accel;
	long long samp_freq_nhz;
	unsigned int regval;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		/*
		 * Data is stored in adjacent registers:
		 * ADXL345_REG_DATA(X0/Y0/Z0) contain the least significant byte
		 * and ADXL345_REG_DATA(X0/Y0/Z0) + 1 the most significant byte
		 */
		ret = FUNC5(data->regmap,
				       FUNC0(chan->address),
				       &accel, sizeof(accel));
		if (ret < 0)
			return ret;

		*val = FUNC7(FUNC4(accel), 12);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		switch (data->type) {
		case ADXL345:
			*val2 = adxl345_uscale;
			break;
		case ADXL375:
			*val2 = adxl375_uscale;
			break;
		}

		return IIO_VAL_INT_PLUS_MICRO;
	case IIO_CHAN_INFO_CALIBBIAS:
		ret = FUNC6(data->regmap,
				  FUNC1(chan->address), &regval);
		if (ret < 0)
			return ret;
		/*
		 * 8-bit resolution at +/- 2g, that is 4x accel data scale
		 * factor
		 */
		*val = FUNC7(regval, 7) * 4;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SAMP_FREQ:
		ret = FUNC6(data->regmap, ADXL345_REG_BW_RATE, &regval);
		if (ret < 0)
			return ret;

		samp_freq_nhz = ADXL345_BASE_RATE_NANO_HZ <<
				(regval & ADXL345_BW_RATE);
		*val = FUNC2(samp_freq_nhz, NHZ_PER_HZ, val2);

		return IIO_VAL_INT_PLUS_NANO;
	}

	return -EINVAL;
}