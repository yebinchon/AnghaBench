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
struct iio_chan_spec {scalar_t__ type; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cm36651_data {struct i2c_client* client; } ;

/* Variables and functions */
 int CM36651_CMD_READ_RAW_LIGHT ; 
 int CM36651_CMD_READ_RAW_PROXIMITY ; 
 int EINVAL ; 
 scalar_t__ IIO_LIGHT ; 
 scalar_t__ IIO_PROXIMITY ; 
 int FUNC0 (struct cm36651_data*,struct iio_chan_spec const*,int*) ; 
 int FUNC1 (struct cm36651_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cm36651_data *cm36651,
				struct iio_chan_spec const *chan, int *val)
{
	struct i2c_client *client = cm36651->client;
	int cmd, ret;

	if (chan->type == IIO_LIGHT)
		cmd = CM36651_CMD_READ_RAW_LIGHT;
	else if (chan->type == IIO_PROXIMITY)
		cmd = CM36651_CMD_READ_RAW_PROXIMITY;
	else
		return -EINVAL;

	ret = FUNC1(cm36651, cmd);
	if (ret < 0) {
		FUNC2(&client->dev, "CM36651 set operation mode failed\n");
		return ret;
	}
	/* Delay for work after enable operation */
	FUNC3(50);
	ret = FUNC0(cm36651, chan, val);
	if (ret < 0) {
		FUNC2(&client->dev, "CM36651 read output failed\n");
		return ret;
	}

	return ret;
}