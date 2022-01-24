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
typedef  int u8 ;
struct max5821_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct i2c_client*,int*,int) ; 
 int FUNC1 (struct i2c_client*,int*,int) ; 
 struct max5821_data* FUNC2 (struct iio_dev*) ; 
 int* max5821_read_dac_command ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     int *val, int channel)
{
	struct max5821_data *data = FUNC2(indio_dev);
	struct i2c_client *client = data->client;
	u8 outbuf[1];
	u8 inbuf[2];
	int ret;

	if ((channel != 0) && (channel != 1))
		return -EINVAL;

	outbuf[0] = max5821_read_dac_command[channel];

	FUNC3(&data->lock);

	ret = FUNC1(client, outbuf, 1);
	if (ret < 0) {
		FUNC4(&data->lock);
		return ret;
	} else if (ret != 1) {
		FUNC4(&data->lock);
		return -EIO;
	}

	ret = FUNC0(client, inbuf, 2);
	if (ret < 0) {
		FUNC4(&data->lock);
		return ret;
	} else if (ret != 2) {
		FUNC4(&data->lock);
		return -EIO;
	}

	FUNC4(&data->lock);

	*val = ((inbuf[0] & 0x0f) << 6) | (inbuf[1] >> 2);

	return IIO_VAL_INT;
}