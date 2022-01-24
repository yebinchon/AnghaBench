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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_MAX_MSG_SIZE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, u8 addr, u8 *p, int cnt)
{
	struct i2c_msg msg;
	u8 buf[CEC_MAX_MSG_SIZE + 3];
	int ret;

	if (FUNC0(cnt > sizeof(buf) - 1))
		return -EINVAL;

	buf[0] = addr;
	FUNC4(buf + 1, p, cnt);

	msg.addr = client->addr;
	msg.flags = 0;
	msg.len = cnt + 1;
	msg.buf = buf;

	FUNC1(&client->dev, "wr 0x%02x: %*ph\n", addr, cnt, p);

	ret = FUNC3(client->adapter, &msg, 1);
	if (ret < 0)
		FUNC2(&client->dev, "Error %d writing to cec:0x%x\n", ret, addr);
	return ret < 0 ? ret : 0;
}