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
 int /*<<< orphan*/  VND_CMD_RESET ; 
 int /*<<< orphan*/  WDT_FW_RESET_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	int error;

	FUNC0(&client->dev, "resetting device now\n");

	error = FUNC3(client, VND_CMD_RESET, 0);
	if (error) {
		FUNC1(&client->dev, "reset failed\n");
		return error;
	}

	/* Wait the device to be ready */
	FUNC2(WDT_FW_RESET_TIME);

	return 0;
}