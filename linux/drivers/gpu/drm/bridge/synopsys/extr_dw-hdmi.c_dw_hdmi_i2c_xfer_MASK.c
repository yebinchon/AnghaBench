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
struct i2c_msg {int addr; int len; int flags; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dw_hdmi_i2c {int is_regaddr; int is_segment; int /*<<< orphan*/  lock; } ;
struct dw_hdmi {int /*<<< orphan*/  dev; struct dw_hdmi_i2c* i2c; } ;

/* Variables and functions */
 int DDC_SEGMENT_ADDR ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HDMI_I2CM_SEGADDR ; 
 int /*<<< orphan*/  HDMI_I2CM_SEGPTR ; 
 int /*<<< orphan*/  HDMI_I2CM_SLAVE ; 
 int HDMI_IH_I2CM_STAT0_DONE ; 
 int HDMI_IH_I2CM_STAT0_ERROR ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_I2CM_STAT0 ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC1 (struct dw_hdmi*,int*,int) ; 
 int FUNC2 (struct dw_hdmi*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_hdmi*,int,int /*<<< orphan*/ ) ; 
 struct dw_hdmi* FUNC4 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap,
			    struct i2c_msg *msgs, int num)
{
	struct dw_hdmi *hdmi = FUNC4(adap);
	struct dw_hdmi_i2c *i2c = hdmi->i2c;
	u8 addr = msgs[0].addr;
	int i, ret = 0;

	FUNC0(hdmi->dev, "xfer: num: %d, addr: %#x\n", num, addr);

	for (i = 0; i < num; i++) {
		if (msgs[i].len == 0) {
			FUNC0(hdmi->dev,
				"unsupported transfer %d/%d, no data\n",
				i + 1, num);
			return -EOPNOTSUPP;
		}
	}

	FUNC5(&i2c->lock);

	/* Unmute DONE and ERROR interrupts */
	FUNC3(hdmi, 0x00, HDMI_IH_MUTE_I2CM_STAT0);

	/* Set slave device address taken from the first I2C message */
	FUNC3(hdmi, addr, HDMI_I2CM_SLAVE);

	/* Set slave device register address on transfer */
	i2c->is_regaddr = false;

	/* Set segment pointer for I2C extended read mode operation */
	i2c->is_segment = false;

	for (i = 0; i < num; i++) {
		FUNC0(hdmi->dev, "xfer: num: %d/%d, len: %d, flags: %#x\n",
			i + 1, num, msgs[i].len, msgs[i].flags);
		if (msgs[i].addr == DDC_SEGMENT_ADDR && msgs[i].len == 1) {
			i2c->is_segment = true;
			FUNC3(hdmi, DDC_SEGMENT_ADDR, HDMI_I2CM_SEGADDR);
			FUNC3(hdmi, *msgs[i].buf, HDMI_I2CM_SEGPTR);
		} else {
			if (msgs[i].flags & I2C_M_RD)
				ret = FUNC1(hdmi, msgs[i].buf,
						       msgs[i].len);
			else
				ret = FUNC2(hdmi, msgs[i].buf,
							msgs[i].len);
		}
		if (ret < 0)
			break;
	}

	if (!ret)
		ret = num;

	/* Mute DONE and ERROR interrupts */
	FUNC3(hdmi, HDMI_IH_I2CM_STAT0_ERROR | HDMI_IH_I2CM_STAT0_DONE,
		    HDMI_IH_MUTE_I2CM_STAT0);

	FUNC6(&i2c->lock);

	return ret;
}