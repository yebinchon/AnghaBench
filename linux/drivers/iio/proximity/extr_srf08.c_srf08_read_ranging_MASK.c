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
struct srf08_data {int range_mm; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SRF08_CMD_RANGING_CM ; 
 int /*<<< orphan*/  SRF08_READ_ECHO_1_HIGH ; 
 int /*<<< orphan*/  SRF08_READ_SW_REVISION ; 
 int /*<<< orphan*/  SRF08_WRITE_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct srf08_data *data)
{
	struct i2c_client *client = data->client;
	int ret, i;
	int waittime;

	FUNC5(&data->lock);

	ret = FUNC3(data->client,
			SRF08_WRITE_COMMAND, SRF08_CMD_RANGING_CM);
	if (ret < 0) {
		FUNC0(&client->dev, "write command - err: %d\n", ret);
		FUNC6(&data->lock);
		return ret;
	}

	/*
	 * we read here until a correct version number shows up as
	 * suggested by the documentation
	 *
	 * with an ultrasonic speed of 343 m/s and a roundtrip of it
	 * sleep the expected duration and try to read from the device
	 * if nothing useful is read try it in a shorter grid
	 *
	 * polling for not more than 20 ms should be enough
	 */
	waittime = 1 + data->range_mm / 172;
	FUNC4(waittime);
	for (i = 0; i < 4; i++) {
		ret = FUNC1(data->client,
						SRF08_READ_SW_REVISION);

		/* check if a valid version number is read */
		if (ret < 255 && ret > 0)
			break;
		FUNC4(5);
	}

	if (ret >= 255 || ret <= 0) {
		FUNC0(&client->dev, "device not ready\n");
		FUNC6(&data->lock);
		return -EIO;
	}

	ret = FUNC2(data->client,
						SRF08_READ_ECHO_1_HIGH);
	if (ret < 0) {
		FUNC0(&client->dev, "cannot read distance: ret=%d\n", ret);
		FUNC6(&data->lock);
		return ret;
	}

	FUNC6(&data->lock);

	return ret;
}