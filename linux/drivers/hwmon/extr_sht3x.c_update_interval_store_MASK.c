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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ high_precision; } ;
struct sht3x_data {int mode; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  i2c_lock; TYPE_1__ setup; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EIO ; 
 int SHT3X_CMD_LENGTH ; 
 struct sht3x_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,char const*,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char** periodic_measure_commands_hpm ; 
 char** periodic_measure_commands_lpm ; 
 char const* sht3x_cmd_break ; 
 int /*<<< orphan*/  FUNC6 (struct sht3x_data*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf,
				     size_t count)
{
	u16 update_interval;
	u8 mode;
	int ret;
	const char *command;
	struct sht3x_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;

	ret = FUNC3(buf, 0, &update_interval);
	if (ret)
		return ret;

	mode = FUNC1(update_interval);

	FUNC4(&data->data_lock);
	/* mode did not change */
	if (mode == data->mode) {
		FUNC5(&data->data_lock);
		return count;
	}

	FUNC4(&data->i2c_lock);
	/*
	 * Abort periodic measure mode.
	 * To do any changes to the configuration while in periodic mode, we
	 * have to send a break command to the sensor, which then falls back
	 * to single shot (mode = 0).
	 */
	if (data->mode > 0) {
		ret = FUNC2(client, sht3x_cmd_break,
				      SHT3X_CMD_LENGTH);
		if (ret != SHT3X_CMD_LENGTH)
			goto out;
		data->mode = 0;
	}

	if (mode > 0) {
		if (data->setup.high_precision)
			command = periodic_measure_commands_hpm[mode - 1];
		else
			command = periodic_measure_commands_lpm[mode - 1];

		/* select mode */
		ret = FUNC2(client, command, SHT3X_CMD_LENGTH);
		if (ret != SHT3X_CMD_LENGTH)
			goto out;
	}

	/* select mode and command */
	data->mode = mode;
	FUNC6(data);

out:
	FUNC5(&data->i2c_lock);
	FUNC5(&data->data_lock);
	if (ret != SHT3X_CMD_LENGTH)
		return ret < 0 ? ret : -EIO;

	return count;
}