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
typedef  int /*<<< orphan*/  u16 ;
struct sht3x_data {size_t mode; int /*<<< orphan*/  data_lock; scalar_t__ last_update; int /*<<< orphan*/  humidity; int /*<<< orphan*/  temperature; int /*<<< orphan*/  wait_time; int /*<<< orphan*/  command; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct sht3x_data* FUNC0 (int) ; 
 int SHT3X_RESPONSE_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sht3x_data* FUNC2 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/ * mode_to_update_interval ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*,struct sht3x_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct sht3x_data *FUNC10(struct device *dev)
{
	struct sht3x_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	u16 interval_ms = mode_to_update_interval[data->mode];
	unsigned long interval_jiffies = FUNC3(interval_ms);
	unsigned char buf[SHT3X_RESPONSE_LENGTH];
	u16 val;
	int ret = 0;

	FUNC4(&data->data_lock);
	/*
	 * Only update cached readings once per update interval in periodic
	 * mode. In single shot mode the sensor measures values on demand, so
	 * every time the sysfs interface is called, a measurement is triggered.
	 * In periodic mode however, the measurement process is handled
	 * internally by the sensor and reading out sensor values only makes
	 * sense if a new reading is available.
	 */
	if (FUNC9(jiffies, data->last_update + interval_jiffies)) {
		ret = FUNC8(client, data, data->command, buf,
					      sizeof(buf), data->wait_time);
		if (ret)
			goto out;

		val = FUNC1((__be16 *)buf);
		data->temperature = FUNC7(val);
		val = FUNC1((__be16 *)(buf + 3));
		data->humidity = FUNC6(val);
		data->last_update = jiffies;
	}

out:
	FUNC5(&data->data_lock);
	if (ret)
		return FUNC0(ret);

	return data;
}