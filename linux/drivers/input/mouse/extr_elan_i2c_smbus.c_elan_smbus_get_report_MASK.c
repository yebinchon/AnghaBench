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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  ETP_SMBUS_PACKET_QUERY ; 
 int ETP_SMBUS_REPORT_LEN ; 
 size_t ETP_SMBUS_REPORT_OFFSET ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 *report)
{
	int len;

	FUNC0(I2C_SMBUS_BLOCK_MAX > ETP_SMBUS_REPORT_LEN);

	len = FUNC2(client,
					ETP_SMBUS_PACKET_QUERY,
					&report[ETP_SMBUS_REPORT_OFFSET]);
	if (len < 0) {
		FUNC1(&client->dev, "failed to read report data: %d\n", len);
		return len;
	}

	if (len != ETP_SMBUS_REPORT_LEN) {
		FUNC1(&client->dev,
			"wrong report length (%d vs %d expected)\n",
			len, ETP_SMBUS_REPORT_LEN);
		return -EIO;
	}

	return 0;
}