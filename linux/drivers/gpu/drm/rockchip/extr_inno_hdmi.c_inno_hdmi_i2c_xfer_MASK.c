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
struct inno_hdmi_i2c {int /*<<< orphan*/  lock; } ;
struct inno_hdmi {int /*<<< orphan*/  dev; struct inno_hdmi_i2c* i2c; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HDMI_INTERRUPT_MASK1 ; 
 int /*<<< orphan*/  HDMI_INTERRUPT_STATUS1 ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC1 (struct inno_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inno_hdmi* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (struct inno_hdmi*,struct i2c_msg*) ; 
 int FUNC4 (struct inno_hdmi*,struct i2c_msg*) ; 
 int /*<<< orphan*/  m_INT_EDID_READY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap,
			      struct i2c_msg *msgs, int num)
{
	struct inno_hdmi *hdmi = FUNC2(adap);
	struct inno_hdmi_i2c *i2c = hdmi->i2c;
	int i, ret = 0;

	FUNC5(&i2c->lock);

	/* Clear the EDID interrupt flag and unmute the interrupt */
	FUNC1(hdmi, HDMI_INTERRUPT_MASK1, m_INT_EDID_READY);
	FUNC1(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);

	for (i = 0; i < num; i++) {
		FUNC0(hdmi->dev,
			      "xfer: num: %d/%d, len: %d, flags: %#x\n",
			      i + 1, num, msgs[i].len, msgs[i].flags);

		if (msgs[i].flags & I2C_M_RD)
			ret = FUNC3(hdmi, &msgs[i]);
		else
			ret = FUNC4(hdmi, &msgs[i]);

		if (ret < 0)
			break;
	}

	if (!ret)
		ret = num;

	/* Mute HDMI EDID interrupt */
	FUNC1(hdmi, HDMI_INTERRUPT_MASK1, 0);

	FUNC6(&i2c->lock);

	return ret;
}