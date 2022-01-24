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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  class; } ;
struct dw_hdmi_i2c {struct i2c_adapter adap; int /*<<< orphan*/  cmp; int /*<<< orphan*/  lock; } ;
struct dw_hdmi {int /*<<< orphan*/  dev; struct dw_hdmi_i2c* i2c; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct i2c_adapter* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dw_hdmi_i2c*) ; 
 struct dw_hdmi_i2c* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw_hdmi_algorithm ; 
 int FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,struct dw_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct i2c_adapter *FUNC10(struct dw_hdmi *hdmi)
{
	struct i2c_adapter *adap;
	struct dw_hdmi_i2c *i2c;
	int ret;

	i2c = FUNC4(hdmi->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return FUNC0(-ENOMEM);

	FUNC8(&i2c->lock);
	FUNC7(&i2c->cmp);

	adap = &i2c->adap;
	adap->class = I2C_CLASS_DDC;
	adap->owner = THIS_MODULE;
	adap->dev.parent = hdmi->dev;
	adap->algo = &dw_hdmi_algorithm;
	FUNC9(adap->name, "DesignWare HDMI", sizeof(adap->name));
	FUNC6(adap, hdmi);

	ret = FUNC5(adap);
	if (ret) {
		FUNC2(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
		FUNC3(hdmi->dev, i2c);
		return FUNC0(ret);
	}

	hdmi->i2c = i2c;

	FUNC1(hdmi->dev, "registered %s I2C bus driver\n", adap->name);

	return adap;
}