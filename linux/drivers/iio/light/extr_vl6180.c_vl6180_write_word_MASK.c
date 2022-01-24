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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, u16 cmd, u16 val)
{
	__be16 buf[2];
	struct i2c_msg msgs[1] = {
		{ .addr = client->addr, .len = sizeof(buf), .buf = (u8 *) &buf } };
	int ret;

	buf[0] = FUNC1(cmd);
	buf[1] = FUNC1(val);

	ret = FUNC3(client->adapter, msgs, FUNC0(msgs));
	if (ret < 0) {
		FUNC2(&client->dev, "failed writing register 0x%04x\n", cmd);
		return ret;
	}

	return 0;
}