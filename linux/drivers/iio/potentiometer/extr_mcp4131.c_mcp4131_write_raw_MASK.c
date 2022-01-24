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
struct mcp4131_data {int* buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; TYPE_1__* cfg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int max_pos; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int MCP4131_WIPER_SHIFT ; 
 int MCP4131_WRITE ; 
 struct mcp4131_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	int err;
	struct mcp4131_data *data = FUNC0(indio_dev);
	int address = chan->channel << MCP4131_WIPER_SHIFT;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (val > data->cfg->max_pos || val < 0)
			return -EINVAL;
		break;

	default:
		return -EINVAL;
	}

	FUNC1(&data->lock);

	data->buf[0] = address << MCP4131_WIPER_SHIFT;
	data->buf[0] |= MCP4131_WRITE | (val >> 8);
	data->buf[1] = val & 0xFF; /* 8 bits here */

	err = FUNC3(data->spi, data->buf, 2);
	FUNC2(&data->lock);

	return err;
}