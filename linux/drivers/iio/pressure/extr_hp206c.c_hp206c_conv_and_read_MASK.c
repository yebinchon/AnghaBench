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
typedef  int /*<<< orphan*/  u8 ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;
struct hp206c_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct hp206c_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
				u8 conv_cmd, u8 read_cmd,
				unsigned int sleep_us)
{
	int ret;
	struct hp206c_data *data = FUNC4(indio_dev);
	struct i2c_client *client = data->client;

	ret = FUNC2(indio_dev);
	if (ret < 0) {
		FUNC0(&indio_dev->dev, "Device not ready: %d\n", ret);
		return ret;
	}

	ret = FUNC3(client, conv_cmd);
	if (ret < 0) {
		FUNC0(&indio_dev->dev, "Failed convert: %d\n", ret);
		return ret;
	}

	FUNC5(sleep_us, sleep_us * 3 / 2);

	ret = FUNC2(indio_dev);
	if (ret < 0) {
		FUNC0(&indio_dev->dev, "Device not ready: %d\n", ret);
		return ret;
	}

	ret = FUNC1(client, read_cmd);
	if (ret < 0)
		FUNC0(&indio_dev->dev, "Failed read: %d\n", ret);

	return ret;
}