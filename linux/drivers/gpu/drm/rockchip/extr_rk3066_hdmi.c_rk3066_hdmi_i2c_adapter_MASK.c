#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  class; } ;
struct rk3066_hdmi_i2c {struct i2c_adapter adap; int /*<<< orphan*/  cmpltn; int /*<<< orphan*/  i2c_lock; } ;
struct rk3066_hdmi {TYPE_2__* dev; struct rk3066_hdmi_i2c* i2c; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct i2c_adapter* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct rk3066_hdmi_i2c*) ; 
 struct rk3066_hdmi_i2c* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,struct rk3066_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rk3066_hdmi_algorithm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct i2c_adapter *FUNC10(struct rk3066_hdmi *hdmi)
{
	struct i2c_adapter *adap;
	struct rk3066_hdmi_i2c *i2c;
	int ret;

	i2c = FUNC4(hdmi->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return FUNC2(-ENOMEM);

	FUNC8(&i2c->i2c_lock);
	FUNC7(&i2c->cmpltn);

	adap = &i2c->adap;
	adap->class = I2C_CLASS_DDC;
	adap->owner = THIS_MODULE;
	adap->dev.parent = hdmi->dev;
	adap->dev.of_node = hdmi->dev->of_node;
	adap->algo = &rk3066_hdmi_algorithm;
	FUNC9(adap->name, "RK3066 HDMI", sizeof(adap->name));
	FUNC6(adap, hdmi);

	ret = FUNC5(adap);
	if (ret) {
		FUNC1(hdmi->dev, "cannot add %s I2C adapter\n",
			      adap->name);
		FUNC3(hdmi->dev, i2c);
		return FUNC2(ret);
	}

	hdmi->i2c = i2c;

	FUNC0(hdmi->dev, "registered %s I2C bus driver\n", adap->name);

	return adap;
}