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
typedef  void u8 ;
struct i2c_msg {size_t len; void* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC2(void *context, const void *reg_buf,
			       size_t reg_size, void *val_buf, size_t val_size)
{
	struct i2c_client *client = context;
	int ret;
	struct i2c_msg msg[2] = {
		{
			.addr = client->addr,
			.flags = 0,
			.len = reg_size,
			.buf = (u8 *)reg_buf,
		}, {
			.addr = client->addr,
			.flags = I2C_M_RD,
			.len = val_size,
			.buf = val_buf,
		}
	};

	ret = FUNC0(client->adapter, msg, 2);
	if (ret != 2) {
		FUNC1(&client->dev, "i2c reg read failed %d\n", ret);
		if (ret >= 0)
			ret = -EREMOTEIO;
		return ret;
	}
	return 0;
}