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
struct sun4i_hdmi {struct i2c_adapter* i2c; int /*<<< orphan*/  ddc_parent_clk; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct i2c_adapter* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,struct sun4i_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct sun4i_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun4i_hdmi_i2c_algorithm ; 
 int FUNC5 (struct sun4i_hdmi*) ; 

int FUNC6(struct device *dev, struct sun4i_hdmi *hdmi)
{
	struct i2c_adapter *adap;
	int ret = 0;

	ret = FUNC4(hdmi, hdmi->ddc_parent_clk);
	if (ret)
		return ret;

	ret = FUNC5(hdmi);
	if (ret)
		return ret;

	adap = FUNC0(dev, sizeof(*adap), GFP_KERNEL);
	if (!adap)
		return -ENOMEM;

	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_DDC;
	adap->algo = &sun4i_hdmi_i2c_algorithm;
	FUNC3(adap->name, "sun4i_hdmi_i2c adapter", sizeof(adap->name));
	FUNC2(adap, hdmi);

	ret = FUNC1(adap);
	if (ret)
		return ret;

	hdmi->i2c = adap;

	return ret;
}