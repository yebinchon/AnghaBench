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
typedef  enum raydium_bl_ack { ____Placeholder_raydium_bl_ack } raydium_bl_ack ;

/* Variables and functions */
 int /*<<< orphan*/  RM_CMD_BOOT_ACK ; 
 int /*<<< orphan*/  RM_CMD_BOOT_WRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				    const void *data, size_t len,
				    enum raydium_bl_ack state)
{
	int error;

	error = FUNC2(client, RM_CMD_BOOT_WRT, data, len);
	if (error) {
		FUNC0(&client->dev, "WRT obj command failed: %d\n",
			error);
		return error;
	}

	error = FUNC2(client, RM_CMD_BOOT_ACK, NULL, 0);
	if (error) {
		FUNC0(&client->dev, "Ack obj command failed: %d\n", error);
		return error;
	}

	error = FUNC1(client, state);
	if (error) {
		FUNC0(&client->dev, "BL check state failed: %d\n", error);
		return error;
	}
	return 0;
}