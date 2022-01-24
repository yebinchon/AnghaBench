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
typedef  int /*<<< orphan*/  u32 ;
struct si2168_cmd {int dummy; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct si2168_cmd*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct i2c_client* FUNC2 (struct i2c_mux_core*) ; 
 int FUNC3 (struct i2c_client*,struct si2168_cmd*) ; 

__attribute__((used)) static int FUNC4(struct i2c_mux_core *muxc, u32 chan)
{
	struct i2c_client *client = FUNC2(muxc);
	int ret;
	struct si2168_cmd cmd;

	/* close I2C gate */
	FUNC0(&cmd, "\xc0\x0d\x00", 3, 0);
	ret = FUNC3(client, &cmd);
	if (ret)
		goto err;

	return 0;
err:
	FUNC1(&client->dev, "failed=%d\n", ret);
	return ret;
}