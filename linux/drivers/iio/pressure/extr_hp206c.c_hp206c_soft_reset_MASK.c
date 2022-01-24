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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct hp206c_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  HP206C_CMD_SOFT_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct hp206c_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	int ret;
	struct hp206c_data *data = FUNC4(indio_dev);
	struct i2c_client *client = data->client;

	ret = FUNC3(client, HP206C_CMD_SOFT_RST);
	if (ret) {
		FUNC0(&client->dev, "Failed to reset device: %d\n", ret);
		return ret;
	}

	FUNC5(400, 600);

	ret = FUNC2(indio_dev);
	if (ret) {
		FUNC0(&client->dev, "Device not ready after soft reset: %d\n", ret);
		return ret;
	}

	ret = FUNC1(client, true);
	if (ret)
		FUNC0(&client->dev, "Failed to enable compensation: %d\n", ret);
	return ret;
}