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
typedef  int u8 ;
typedef  int u16 ;
struct tda998x_priv {int /*<<< orphan*/  mutex; struct i2c_client* hdmi; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tda998x_priv*,int) ; 

__attribute__((used)) static void
FUNC6(struct tda998x_priv *priv, u16 reg, u16 val)
{
	struct i2c_client *client = priv->hdmi;
	u8 buf[] = {FUNC0(reg), val >> 8, val};
	int ret;

	FUNC3(&priv->mutex);
	ret = FUNC5(priv, reg);
	if (ret < 0)
		goto out;

	ret = FUNC2(client, buf, sizeof(buf));
	if (ret < 0)
		FUNC1(&client->dev, "Error %d writing to 0x%x\n", ret, reg);
out:
	FUNC4(&priv->mutex);
}