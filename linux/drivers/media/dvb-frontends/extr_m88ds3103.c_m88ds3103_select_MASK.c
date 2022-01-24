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
struct m88ds3103_dev {struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_msg {int len; char* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct m88ds3103_dev* FUNC2 (struct i2c_mux_core*) ; 

__attribute__((used)) static int FUNC3(struct i2c_mux_core *muxc, u32 chan)
{
	struct m88ds3103_dev *dev = FUNC2(muxc);
	struct i2c_client *client = dev->client;
	int ret;
	struct i2c_msg msg = {
		.addr = client->addr,
		.flags = 0,
		.len = 2,
		.buf = "\x03\x11",
	};

	/* Open tuner I2C repeater for 1 xfer, closes automatically */
	ret = FUNC0(client->adapter, &msg, 1);
	if (ret != 1) {
		FUNC1(&client->dev, "i2c wr failed=%d\n", ret);
		if (ret >= 0)
			ret = -EREMOTEIO;
		return ret;
	}

	return 0;
}