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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct bh1780_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BH1780_INTERVAL ; 
 int /*<<< orphan*/  BH1780_REG_DLOW ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_LIGHT 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct bh1780_data*,int /*<<< orphan*/ ) ; 
 struct bh1780_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	struct bh1780_data *bh1780 = FUNC1(indio_dev);
	int value;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_LIGHT:
			FUNC2(&bh1780->client->dev);
			value = FUNC0(bh1780, BH1780_REG_DLOW);
			if (value < 0)
				return value;
			FUNC3(&bh1780->client->dev);
			FUNC4(&bh1780->client->dev);
			*val = value;

			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_INT_TIME:
		*val = 0;
		*val2 = BH1780_INTERVAL * 1000;
		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}
}