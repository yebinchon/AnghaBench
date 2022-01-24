#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tx_buf ;
struct am2315_sensor_data {int hum_data; int temp_data; } ;
struct am2315_data {int /*<<< orphan*/  lock; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  rx_buf ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AM2315_FUNCTION_READ ; 
 size_t AM2315_HUM_OFFSET ; 
 int AM2315_REG_HUM_MSB ; 
 size_t AM2315_TEMP_OFFSET ; 
 int EIO ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 
 int FUNC4 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct am2315_data *data,
			    struct am2315_sensor_data *sensor_data)
{
	int ret;
	/* tx_buf format: <function code> <start addr> <nr of regs to read> */
	u8 tx_buf[3] = { AM2315_FUNCTION_READ, AM2315_REG_HUM_MSB, 4 };
	/*
	 * rx_buf format:
	 * <function code> <number of registers read>
	 * <humidity MSB> <humidity LSB> <temp MSB> <temp LSB>
	 * <CRC LSB> <CRC MSB>
	 */
	u8 rx_buf[8];
	u16 crc;

	/* First wake up the device. */
	FUNC1(data->client);

	FUNC5(&data->lock);
	ret = FUNC4(data->client, tx_buf, sizeof(tx_buf));
	if (ret < 0) {
		FUNC2(&data->client->dev, "failed to send read request\n");
		goto exit_unlock;
	}
	/* Wait 2-3 ms, then read back the data sent by the device. */
	FUNC7(2000, 3000);
	/* Do a bulk data read, then pick out what we need. */
	ret = FUNC3(data->client, rx_buf, sizeof(rx_buf));
	if (ret < 0) {
		FUNC2(&data->client->dev, "failed to read sensor data\n");
		goto exit_unlock;
	}
	FUNC6(&data->lock);
	/*
	 * Do a CRC check on the data and compare it to the value
	 * calculated by the device.
	 */
	crc = FUNC0(rx_buf, sizeof(rx_buf) - 2);
	if ((crc & 0xff) != rx_buf[6] || (crc >> 8) != rx_buf[7]) {
		FUNC2(&data->client->dev, "failed to verify sensor data\n");
		return -EIO;
	}

	sensor_data->hum_data = (rx_buf[AM2315_HUM_OFFSET] << 8) |
				 rx_buf[AM2315_HUM_OFFSET + 1];
	sensor_data->temp_data = (rx_buf[AM2315_TEMP_OFFSET] << 8) |
				  rx_buf[AM2315_TEMP_OFFSET + 1];

	return ret;

exit_unlock:
	FUNC6(&data->lock);
	return ret;
}