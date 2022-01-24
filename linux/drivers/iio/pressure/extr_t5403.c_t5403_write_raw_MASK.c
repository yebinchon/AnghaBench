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
struct t5403_data {int mode; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 128 
 struct t5403_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* t5403_pressure_conv_ms ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int val, int val2, long mask)
{
	struct t5403_data *data = FUNC1(indio_dev);
	int i;

	switch (mask) {
	case IIO_CHAN_INFO_INT_TIME:
		if (val != 0)
			return -EINVAL;
		for (i = 0; i < FUNC0(t5403_pressure_conv_ms); i++)
			if (val2 == t5403_pressure_conv_ms[i] * 1000) {
				FUNC2(&data->lock);
				data->mode = i;
				FUNC3(&data->lock);
				return 0;
			}
		return -EINVAL;
	default:
		return -EINVAL;
	}
}