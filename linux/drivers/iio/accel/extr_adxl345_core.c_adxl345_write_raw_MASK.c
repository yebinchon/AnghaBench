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
struct adxl345_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  ADXL345_BASE_RATE_NANO_HZ ; 
 int /*<<< orphan*/  ADXL345_BW_RATE ; 
 int /*<<< orphan*/  ADXL345_REG_BW_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 129 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 int NHZ_PER_HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct adxl345_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct adxl345_data *data = FUNC3(indio_dev);
	s64 n;

	switch (mask) {
	case IIO_CHAN_INFO_CALIBBIAS:
		/*
		 * 8-bit resolution at +/- 2g, that is 4x accel data scale
		 * factor
		 */
		return FUNC6(data->regmap,
				    FUNC0(chan->address),
				    val / 4);
	case IIO_CHAN_INFO_SAMP_FREQ:
		n = FUNC2(val * NHZ_PER_HZ + val2, ADXL345_BASE_RATE_NANO_HZ);

		return FUNC5(data->regmap, ADXL345_REG_BW_RATE,
					  ADXL345_BW_RATE,
					  FUNC1(FUNC4(n), 0,
						    ADXL345_BW_RATE));
	}

	return -EINVAL;
}