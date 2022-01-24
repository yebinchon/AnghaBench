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
struct max11100_state {int /*<<< orphan*/  vref_reg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int MAX11100_LSB_DIV ; 
 struct max11100_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val, int *val2, long info)
{
	int ret, vref_uv;
	struct max11100_state *state = FUNC0(indio_dev);

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC1(indio_dev, val);
		if (ret)
			return ret;

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		vref_uv = FUNC2(state->vref_reg);
		if (vref_uv < 0)
			/* dummy regulator "get_voltage" returns -EINVAL */
			return -EINVAL;

		*val =  vref_uv / 1000;
		*val2 = MAX11100_LSB_DIV;
		return IIO_VAL_FRACTIONAL;
	}

	return -EINVAL;
}