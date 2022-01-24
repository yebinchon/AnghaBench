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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCS811_APP_START ; 
 int /*<<< orphan*/  CCS811_STATUS ; 
 int CCS811_STATUS_APP_VALID_LOADED ; 
 int CCS811_STATUS_APP_VALID_MASK ; 
 int CCS811_STATUS_FW_MODE_APPLICATION ; 
 int CCS811_STATUS_FW_MODE_MASK ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int ret;

	ret = FUNC1(client, CCS811_STATUS);
	if (ret < 0)
		return ret;

	if ((ret & CCS811_STATUS_FW_MODE_APPLICATION))
		return 0;

	if ((ret & CCS811_STATUS_APP_VALID_MASK) !=
	    CCS811_STATUS_APP_VALID_LOADED)
		return -EIO;

	ret = FUNC2(client, CCS811_APP_START);
	if (ret < 0)
		return ret;

	ret = FUNC1(client, CCS811_STATUS);
	if (ret < 0)
		return ret;

	if ((ret & CCS811_STATUS_FW_MODE_MASK) !=
	    CCS811_STATUS_FW_MODE_APPLICATION) {
		FUNC0(&client->dev, "Application failed to start. Sensor is still in boot mode.\n");
		return -EIO;
	}

	return 0;
}