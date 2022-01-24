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
struct mcp4131_data {int* buf; TYPE_1__* cfg; int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int kohms; int max_pos; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int MCP4131_READ ; 
 int MCP4131_WIPER_SHIFT ; 
 struct mcp4131_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	int err;
	struct mcp4131_data *data = FUNC2(indio_dev);
	int address = chan->channel;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC4(&data->lock);

		data->buf[0] = (address << MCP4131_WIPER_SHIFT) | MCP4131_READ;
		data->buf[1] = 0;

		err = FUNC3(data->spi, data->buf, 2);
		if (err) {
			FUNC5(&data->lock);
			return err;
		}

		/* Error, bad address/command combination */
		if (!FUNC0(data->buf)) {
			FUNC5(&data->lock);
			return -EIO;
		}

		*val = FUNC1(data->buf);
		FUNC5(&data->lock);

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		*val = 1000 * data->cfg->kohms;
		*val2 = data->cfg->max_pos;
		return IIO_VAL_FRACTIONAL;
	}

	return -EINVAL;
}