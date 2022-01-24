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

/* Variables and functions */
 int MAX_WRITE_RANGE_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct tda998x_priv *priv, u16 reg, u8 *p, int cnt)
{
	struct i2c_client *client = priv->hdmi;
	/* This is the maximum size of the buffer passed in */
	u8 buf[MAX_WRITE_RANGE_BUF + 1];
	int ret;

	if (cnt > MAX_WRITE_RANGE_BUF) {
		FUNC1(&client->dev, "Fixed write buffer too small (%d)\n",
				MAX_WRITE_RANGE_BUF);
		return;
	}

	buf[0] = FUNC0(reg);
	FUNC3(&buf[1], p, cnt);

	FUNC4(&priv->mutex);
	ret = FUNC6(priv, reg);
	if (ret < 0)
		goto out;

	ret = FUNC2(client, buf, cnt + 1);
	if (ret < 0)
		FUNC1(&client->dev, "Error %d writing to 0x%x\n", ret, reg);
out:
	FUNC5(&priv->mutex);
}