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
struct atmel_i2c_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  rxsize; int /*<<< orphan*/  msecs; scalar_t__ count; } ;
struct atmel_i2c_client_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ WORD_ADDR_SIZE ; 
 int FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*) ; 
 struct atmel_i2c_client_priv* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct i2c_client *client, struct atmel_i2c_cmd *cmd)
{
	struct atmel_i2c_client_priv *i2c_priv = FUNC3(client);
	int ret;

	FUNC7(&i2c_priv->lock);

	ret = FUNC2(client);
	if (ret)
		goto err;

	/* send the command */
	ret = FUNC5(client, (u8 *)cmd, cmd->count + WORD_ADDR_SIZE);
	if (ret < 0)
		goto err;

	/* delay the appropriate amount of time for command to execute */
	FUNC6(cmd->msecs);

	/* receive the response */
	ret = FUNC4(client, cmd->data, cmd->rxsize);
	if (ret < 0)
		goto err;

	/* put the device into low-power mode */
	ret = FUNC0(client);
	if (ret < 0)
		goto err;

	FUNC8(&i2c_priv->lock);
	return FUNC1(&client->dev, cmd->data);
err:
	FUNC8(&i2c_priv->lock);
	return ret;
}