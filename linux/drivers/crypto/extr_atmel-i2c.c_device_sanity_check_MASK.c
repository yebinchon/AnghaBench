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
struct atmel_i2c_cmd {scalar_t__* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t LOCK_CONFIG_IDX ; 
 size_t LOCK_VALUE_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_i2c_cmd*) ; 
 int FUNC1 (struct i2c_client*,struct atmel_i2c_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_i2c_cmd*) ; 
 struct atmel_i2c_cmd* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct atmel_i2c_cmd *cmd;
	int ret;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	FUNC0(cmd);

	ret = FUNC1(client, cmd);
	if (ret)
		goto free_cmd;

	/*
	 * It is vital that the Configuration, Data and OTP zones be locked
	 * prior to release into the field of the system containing the device.
	 * Failure to lock these zones may permit modification of any secret
	 * keys and may lead to other security problems.
	 */
	if (cmd->data[LOCK_CONFIG_IDX] || cmd->data[LOCK_VALUE_IDX]) {
		FUNC2(&client->dev, "Configuration or Data and OTP zones are unlocked!\n");
		ret = -ENOTSUPP;
	}

	/* fall through */
free_cmd:
	FUNC3(cmd);
	return ret;
}