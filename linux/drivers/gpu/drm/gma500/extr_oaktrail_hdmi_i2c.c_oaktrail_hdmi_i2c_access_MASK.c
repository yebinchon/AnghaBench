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
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct i2c_msg {int flags; scalar_t__ buf; scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_dev {int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_ICRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC1 (struct oaktrail_hdmi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct oaktrail_hdmi_dev*) ; 
 struct oaktrail_hdmi_dev* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap,
				struct i2c_msg *pmsg,
				int num)
{
	struct oaktrail_hdmi_dev *hdmi_dev = FUNC3(adap);
	struct hdmi_i2c_dev *i2c_dev = hdmi_dev->i2c_dev;
	int i;

	FUNC4(&i2c_dev->i2c_lock);

	/* Enable i2c unit */
	FUNC0(HDMI_ICRH, 0x00008760);

	/* Enable irq */
	FUNC2(hdmi_dev);
	for (i = 0; i < num; i++) {
		if (pmsg->len && pmsg->buf) {
			if (pmsg->flags & I2C_M_RD)
				FUNC6(adap, pmsg);
			else
				FUNC7(adap, pmsg);
		}
		pmsg++;         /* next message */
	}

	/* Disable irq */
	FUNC1(hdmi_dev);

	FUNC5(&i2c_dev->i2c_lock);

	return i;
}