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
typedef  int u8 ;
struct max1363_state {int (* recv ) (struct i2c_client*,int*,int) ;TYPE_1__* chip_info; int /*<<< orphan*/ * current_mode; scalar_t__ monitor_on; struct i2c_client* client; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {size_t address; } ;
struct i2c_client {int dummy; } ;
typedef  int s32 ;
struct TYPE_2__ {int bits; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct iio_dev*) ; 
 struct max1363_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/ * max1363_mode_table ; 
 int FUNC2 (struct max1363_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i2c_client*,int*,int) ; 
 int FUNC6 (struct i2c_client*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
				    struct iio_chan_spec const *chan,
				    int *val,
				    long m)
{
	int ret = 0;
	s32 data;
	u8 rxbuf[2];
	struct max1363_state *st = FUNC1(indio_dev);
	struct i2c_client *client = st->client;

	FUNC3(&indio_dev->mlock);
	/*
	 * If monitor mode is enabled, the method for reading a single
	 * channel will have to be rather different and has not yet
	 * been implemented.
	 *
	 * Also, cannot read directly if buffered capture enabled.
	 */
	if (st->monitor_on || FUNC0(indio_dev)) {
		ret = -EBUSY;
		goto error_ret;
	}

	/* Check to see if current scan mode is correct */
	if (st->current_mode != &max1363_mode_table[chan->address]) {
		/* Update scan mode if needed */
		st->current_mode = &max1363_mode_table[chan->address];
		ret = FUNC2(st);
		if (ret < 0)
			goto error_ret;
	}
	if (st->chip_info->bits != 8) {
		/* Get reading */
		data = st->recv(client, rxbuf, 2);
		if (data < 0) {
			ret = data;
			goto error_ret;
		}
		data = (rxbuf[1] | rxbuf[0] << 8) &
		  ((1 << st->chip_info->bits) - 1);
	} else {
		/* Get reading */
		data = st->recv(client, rxbuf, 1);
		if (data < 0) {
			ret = data;
			goto error_ret;
		}
		data = rxbuf[0];
	}
	*val = data;
error_ret:
	FUNC4(&indio_dev->mlock);
	return ret;

}