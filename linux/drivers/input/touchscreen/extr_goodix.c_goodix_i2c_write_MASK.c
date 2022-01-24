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
struct i2c_msg {int* buf; scalar_t__ len; int /*<<< orphan*/  addr; scalar_t__ flags; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, u16 reg, const u8 *buf,
			    unsigned len)
{
	u8 *addr_buf;
	struct i2c_msg msg;
	int ret;

	addr_buf = FUNC2(len + 2, GFP_KERNEL);
	if (!addr_buf)
		return -ENOMEM;

	addr_buf[0] = reg >> 8;
	addr_buf[1] = reg & 0xFF;
	FUNC3(&addr_buf[2], buf, len);

	msg.flags = 0;
	msg.addr = client->addr;
	msg.buf = addr_buf;
	msg.len = len + 2;

	ret = FUNC0(client->adapter, &msg, 1);
	FUNC1(addr_buf);
	return ret < 0 ? ret : (ret != 1 ? -EIO : 0);
}