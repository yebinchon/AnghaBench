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
typedef  int /*<<< orphan*/  u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;
struct dmard09_data {TYPE_1__* client; } ;
typedef  int s16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMARD09_BUF_LEN ; 
 int /*<<< orphan*/  DMARD09_REG_STAT ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct dmard09_data* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct dmard09_data *data = FUNC3(indio_dev);
	u8 buf[DMARD09_BUF_LEN];
	int ret;
	s16 accel;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		/*
		 * Read from the DMAR09_REG_STAT register, since the chip
		 * caches reads from the individual X, Y, Z registers.
		 */
		ret = FUNC2(data->client,
						    DMARD09_REG_STAT,
						    DMARD09_BUF_LEN, buf);
		if (ret < 0) {
			FUNC0(&data->client->dev, "Error reading reg %d\n",
				DMARD09_REG_STAT);
			return ret;
		}

		accel = FUNC1(&buf[chan->address]);

		/* Remove lower 3 bits and sign extend */
		accel <<= 4;
		accel >>= 7;

		*val = accel;

		return IIO_VAL_INT;
	default:
		return -EINVAL;
	}
}