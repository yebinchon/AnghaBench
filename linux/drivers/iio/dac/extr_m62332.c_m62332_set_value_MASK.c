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
struct m62332_data {int* raw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  vcc; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EIO ; 
 int FUNC1 (struct i2c_client*,int*,int) ; 
 struct m62332_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev, u8 val, int channel)
{
	struct m62332_data *data = FUNC2(indio_dev);
	struct i2c_client *client = data->client;
	u8 outbuf[2];
	int res;

	if (val == data->raw[channel])
		return 0;

	outbuf[0] = channel;
	outbuf[1] = val;

	FUNC3(&data->mutex);

	if (val) {
		res = FUNC6(data->vcc);
		if (res)
			goto out;
	}

	res = FUNC1(client, outbuf, FUNC0(outbuf));
	if (res >= 0 && res != FUNC0(outbuf))
		res = -EIO;
	if (res < 0)
		goto out;

	data->raw[channel] = val;

	if (!val)
		FUNC5(data->vcc);

	FUNC4(&data->mutex);

	return 0;

out:
	FUNC4(&data->mutex);

	return res;
}