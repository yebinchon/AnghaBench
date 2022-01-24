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
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, u8 cmd, u16 reg,
			const u8 *val, int len, u8 lock)
{
	int ret;
	u8 buf[21];
	struct i2c_msg msg[1] = {
		{
			.addr = client->addr,
			.flags = 0,
			.len = 3 + len,
			.buf = buf,
		}
	};

	if (3 + len > sizeof(buf)) {
		ret = -EINVAL;
		goto err;
	}

	buf[0] = (reg >> 8) & 0xff;
	buf[1] = (reg >> 0) & 0xff;
	buf[2] = cmd;
	FUNC4(&buf[3], val, len);

	if (lock)
		FUNC2(client->adapter, I2C_LOCK_SEGMENT);
	ret = FUNC0(client->adapter, msg, 1);
	if (lock)
		FUNC3(client->adapter, I2C_LOCK_SEGMENT);
	if (ret < 0) {
		goto err;
	} else if (ret != 1) {
		ret = -EREMOTEIO;
		goto err;
	}

	return 0;
err:
	FUNC1(&client->dev, "failed %d\n", ret);
	return ret;
}