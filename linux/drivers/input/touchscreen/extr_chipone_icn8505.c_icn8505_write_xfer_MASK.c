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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,void const*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, u16 i2c_addr,
			      int reg_addr, int reg_addr_width,
			      const void *data, int len, bool silent)
{
	u8 buf[3 + 32]; /* 3 bytes for 24 bit reg-addr + 32 bytes max len */
	int i, ret;
	struct i2c_msg msg = {
		.addr = i2c_addr,
		.buf = buf,
		.len = reg_addr_width / 8 + len,
	};

	if (FUNC0(len > 32))
		return -EINVAL;

	for (i = 0; i < (reg_addr_width / 8); i++)
		buf[i] = (reg_addr >> (reg_addr_width - (i + 1) * 8)) & 0xff;

	FUNC3(buf + reg_addr_width / 8, data, len);

	ret = FUNC2(client->adapter, &msg, 1);
	if (ret != 1) {
		if (ret >= 0)
			ret = -EIO;
		if (!silent)
			FUNC1(&client->dev,
				"Error writing addr %#x reg %#x: %d\n",
				i2c_addr, reg_addr, ret);
		return ret;
	}

	return 0;
}