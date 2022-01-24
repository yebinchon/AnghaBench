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
 int /*<<< orphan*/  CHIP_ID ; 
 int /*<<< orphan*/  FW_VERSION ; 
 int QT1070_CHIP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct i2c_client *client)
{
	int id, ver;

	/* Read Chip ID */
	id = FUNC2(client, CHIP_ID);
	if (id != QT1070_CHIP_ID) {
		FUNC0(&client->dev, "ID %d not supported\n", id);
		return false;
	}

	/* Read firmware version */
	ver = FUNC2(client, FW_VERSION);
	if (ver < 0) {
		FUNC0(&client->dev, "could not read the firmware version\n");
		return false;
	}

	FUNC1(&client->dev, "AT42QT1070 firmware version %x\n", ver);

	return true;
}