#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct lnbh29_priv {TYPE_1__* i2c; int /*<<< orphan*/  i2c_address; } ;
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int LNBH29_STATUS_OLF ; 
 int LNBH29_STATUS_VMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_1__*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct lnbh29_priv *priv)
{
	u8 addr = 0x00;
	u8 status[2];
	int ret;
	struct i2c_msg msg[2] = {
		{
			.addr = priv->i2c_address,
			.flags = 0,
			.len = 1,
			.buf = &addr
		}, {
			.addr = priv->i2c_address,
			.flags = I2C_M_RD,
			.len = sizeof(status),
			.buf = status
		}
	};

	ret = FUNC2(priv->i2c, msg, 2);
	if (ret >= 0 && ret != 2)
		ret = -EIO;
	if (ret < 0) {
		FUNC0(&priv->i2c->dev, "LNBH29 I2C transfer failed (%d)\n",
			ret);
		return ret;
	}

	if (status[0] & (LNBH29_STATUS_OLF | LNBH29_STATUS_VMON)) {
		FUNC1(&priv->i2c->dev,
			"LNBH29 voltage in failure state, status reg 0x%x\n",
			status[0]);
		return -EIO;
	}

	return 0;
}