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
struct rk3066_hdmi_i2c {int /*<<< orphan*/  i2c_lock; scalar_t__ stat; } ;
struct rk3066_hdmi {int /*<<< orphan*/  dev; struct rk3066_hdmi_i2c* i2c; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HDMI_INTR_EDID_MASK ; 
 int /*<<< orphan*/  HDMI_INTR_MASK1 ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC1 (struct rk3066_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rk3066_hdmi* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rk3066_hdmi*) ; 
 int FUNC6 (struct rk3066_hdmi*,struct i2c_msg*) ; 
 int FUNC7 (struct rk3066_hdmi*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap,
				struct i2c_msg *msgs, int num)
{
	struct rk3066_hdmi *hdmi = FUNC2(adap);
	struct rk3066_hdmi_i2c *i2c = hdmi->i2c;
	int i, ret = 0;

	FUNC3(&i2c->i2c_lock);

	FUNC5(hdmi);

	/* Unmute HDMI EDID interrupt. */
	FUNC1(hdmi, HDMI_INTR_MASK1,
		  HDMI_INTR_EDID_MASK, HDMI_INTR_EDID_MASK);
	i2c->stat = 0;

	for (i = 0; i < num; i++) {
		FUNC0(hdmi->dev,
			      "xfer: num: %d/%d, len: %d, flags: %#x\n",
			      i + 1, num, msgs[i].len, msgs[i].flags);

		if (msgs[i].flags & I2C_M_RD)
			ret = FUNC6(hdmi, &msgs[i]);
		else
			ret = FUNC7(hdmi, &msgs[i]);

		if (ret < 0)
			break;
	}

	if (!ret)
		ret = num;

	/* Mute HDMI EDID interrupt. */
	FUNC1(hdmi, HDMI_INTR_MASK1, HDMI_INTR_EDID_MASK, 0);

	FUNC4(&i2c->i2c_lock);

	return ret;
}