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
typedef  int /*<<< orphan*/  u16 ;
struct tda998x_priv {int /*<<< orphan*/  mutex; struct i2c_client* hdmi; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct tda998x_priv *priv, u16 reg, char *buf, int cnt)
{
	struct i2c_client *client = priv->hdmi;
	u8 addr = FUNC0(reg);
	int ret;

	FUNC4(&priv->mutex);
	ret = FUNC6(priv, reg);
	if (ret < 0)
		goto out;

	ret = FUNC3(client, &addr, sizeof(addr));
	if (ret < 0)
		goto fail;

	ret = FUNC2(client, buf, cnt);
	if (ret < 0)
		goto fail;

	goto out;

fail:
	FUNC1(&client->dev, "Error %d reading from 0x%x\n", ret, reg);
out:
	FUNC5(&priv->mutex);
	return ret;
}