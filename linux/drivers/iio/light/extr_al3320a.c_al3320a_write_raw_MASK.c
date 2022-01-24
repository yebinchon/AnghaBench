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
struct iio_chan_spec {int dummy; } ;
struct al3320a_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int AL3320A_GAIN_SHIFT ; 
 int /*<<< orphan*/  AL3320A_REG_CONFIG_RANGE ; 
 int FUNC0 (int**) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_SCALE 128 
 int** al3320a_scales ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct al3320a_data* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int val,
			     int val2, long mask)
{
	struct al3320a_data *data = FUNC2(indio_dev);
	int i;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		for (i = 0; i < FUNC0(al3320a_scales); i++) {
			if (val == al3320a_scales[i][0] &&
			    val2 == al3320a_scales[i][1])
				return FUNC1(data->client,
					AL3320A_REG_CONFIG_RANGE,
					i << AL3320A_GAIN_SHIFT);
		}
		break;
	}
	return -EINVAL;
}