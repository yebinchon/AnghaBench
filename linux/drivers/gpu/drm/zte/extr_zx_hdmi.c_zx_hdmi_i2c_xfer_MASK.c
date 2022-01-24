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
struct zx_hdmi_i2c {int /*<<< orphan*/  lock; } ;
struct zx_hdmi {int /*<<< orphan*/  dev; struct zx_hdmi_i2c* ddc; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HW_DDC_MASTER ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  TPI_DDC_MASTER_EN ; 
 int /*<<< orphan*/  FUNC1 (struct zx_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zx_hdmi* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct zx_hdmi*,struct i2c_msg*) ; 
 int FUNC6 (struct zx_hdmi*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap, struct i2c_msg *msgs,
			    int num)
{
	struct zx_hdmi *hdmi = FUNC2(adap);
	struct zx_hdmi_i2c *ddc = hdmi->ddc;
	int i, ret = 0;

	FUNC3(&ddc->lock);

	/* Enable DDC master access */
	FUNC1(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, HW_DDC_MASTER);

	for (i = 0; i < num; i++) {
		FUNC0(hdmi->dev,
			      "xfer: num: %d/%d, len: %d, flags: %#x\n",
			      i + 1, num, msgs[i].len, msgs[i].flags);

		if (msgs[i].flags & I2C_M_RD)
			ret = FUNC5(hdmi, &msgs[i]);
		else
			ret = FUNC6(hdmi, &msgs[i]);

		if (ret < 0)
			break;
	}

	if (!ret)
		ret = num;

	/* Disable DDC master access */
	FUNC1(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, 0);

	FUNC4(&ddc->lock);

	return ret;
}