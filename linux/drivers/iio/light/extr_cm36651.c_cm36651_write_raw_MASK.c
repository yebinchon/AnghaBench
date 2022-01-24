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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cm36651_data {struct i2c_client* client; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_INT_TIME ; 
 int FUNC0 (struct cm36651_data*,struct iio_chan_spec const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct cm36651_data* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct cm36651_data *cm36651 = FUNC2(indio_dev);
	struct i2c_client *client = cm36651->client;
	int ret = -EINVAL;

	if (mask == IIO_CHAN_INFO_INT_TIME) {
		ret = FUNC0(cm36651, chan, val2);
		if (ret < 0)
			FUNC1(&client->dev, "Integration time write failed\n");
	}

	return ret;
}