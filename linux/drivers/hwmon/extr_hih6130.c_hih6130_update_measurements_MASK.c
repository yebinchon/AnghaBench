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
struct i2c_msg {int len; unsigned char* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct hih6130 {int valid; int /*<<< orphan*/  lock; scalar_t__ last_update; int /*<<< orphan*/  temperature; int /*<<< orphan*/  humidity; int /*<<< orphan*/  write_length; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hih6130* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct i2c_client*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct hih6130 *hih6130 = FUNC1(dev);
	struct i2c_client *client = hih6130->client;
	int ret = 0;
	int t;
	unsigned char tmp[4];
	struct i2c_msg msgs[1] = {
		{
			.addr = client->addr,
			.flags = I2C_M_RD,
			.len = 4,
			.buf = tmp,
		}
	};

	FUNC7(&hih6130->lock);

	/*
	 * While the measurement can be completed in ~40ms the sensor takes
	 * much longer to react to a change in external conditions. How quickly
	 * it reacts depends on airflow and other factors outwith our control.
	 * The datasheet specifies maximum 'Response time' for humidity at 8s
	 * and temperature at 30s under specified conditions.
	 * We therefore choose to only read the sensor at most once per second.
	 * This trades off pointless activity polling the sensor much faster
	 * than it can react against better response times in conditions more
	 * favourable than specified in the datasheet.
	 */
	if (FUNC9(jiffies, hih6130->last_update + HZ) || !hih6130->valid) {

		/*
		 * Write to slave address to request a measurement.
		 * According with the datasheet it should be with no data, but
		 * for systems with I2C bus drivers that do not allow zero
		 * length packets we write one dummy byte to allow sensor
		 * measurements on them.
		 */
		tmp[0] = 0;
		ret = FUNC4(client, tmp, hih6130->write_length);
		if (ret < 0)
			goto out;

		/* measurement cycle time is ~36.65msec */
		FUNC6(40);

		ret = FUNC5(client->adapter, msgs, 1);
		if (ret < 0)
			goto out;

		if ((tmp[0] & 0xC0) != 0) {
			FUNC0(&client->dev, "Error while reading measurement result\n");
			ret = -EIO;
			goto out;
		}

		t = (tmp[0] << 8) + tmp[1];
		hih6130->humidity = FUNC2(t);

		t = (tmp[2] << 8) + tmp[3];
		hih6130->temperature = FUNC3(t);

		hih6130->last_update = jiffies;
		hih6130->valid = true;
	}
out:
	FUNC8(&hih6130->lock);

	return ret >= 0 ? 0 : ret;
}