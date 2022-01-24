#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mxc6255_data {TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int MXC6255_SCALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct mxc6255_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct mxc6255_data *data = FUNC1(indio_dev);
	unsigned int reg;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(data->regmap, chan->address, &reg);
		if (ret < 0) {
			FUNC0(&data->client->dev,
				"Error reading reg %lu\n", chan->address);
			return ret;
		}

		*val = FUNC3(reg, 7);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		*val2 = MXC6255_SCALE;
		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}
}