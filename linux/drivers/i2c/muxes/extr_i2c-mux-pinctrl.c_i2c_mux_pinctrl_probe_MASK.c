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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct i2c_mux_pinctrl {struct i2c_adapter** states; struct i2c_adapter* pinctrl; } ;
struct i2c_mux_core {int mux_locked; int /*<<< orphan*/  deselect; TYPE_1__* parent; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct i2c_adapter* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_mux_core*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i2c_mux_core* FUNC6 (struct i2c_adapter*,struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  i2c_mux_pinctrl_deselect ; 
 struct i2c_adapter* FUNC8 (struct device*) ; 
 struct i2c_adapter* FUNC9 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_mux_pinctrl_select ; 
 struct i2c_mux_pinctrl* FUNC10 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device_node*,char*) ; 
 int FUNC14 (struct device_node*,char*,int,char const**) ; 
 struct i2c_adapter* FUNC15 (struct i2c_adapter*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct i2c_mux_core*) ; 
 int /*<<< orphan*/  states ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct i2c_mux_pinctrl*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct i2c_mux_core *muxc;
	struct i2c_mux_pinctrl *mux;
	struct i2c_adapter *parent;
	struct i2c_adapter *root;
	int num_names, i, ret;
	const char *name;

	num_names = FUNC13(np, "pinctrl-names");
	if (num_names < 0) {
		FUNC2(dev, "Cannot parse pinctrl-names: %d\n",
			num_names);
		return num_names;
	}

	parent = FUNC8(dev);
	if (FUNC0(parent))
		return FUNC1(parent);

	muxc = FUNC6(parent, dev, num_names,
			     FUNC18(mux, states, num_names),
			     0, i2c_mux_pinctrl_select, NULL);
	if (!muxc) {
		ret = -ENOMEM;
		goto err_put_parent;
	}
	mux = FUNC10(muxc);

	FUNC16(pdev, muxc);

	mux->pinctrl = FUNC4(dev);
	if (FUNC0(mux->pinctrl)) {
		ret = FUNC1(mux->pinctrl);
		FUNC2(dev, "Cannot get pinctrl: %d\n", ret);
		goto err_put_parent;
	}

	for (i = 0; i < num_names; i++) {
		ret = FUNC14(np, "pinctrl-names", i,
						    &name);
		if (ret < 0) {
			FUNC2(dev, "Cannot parse pinctrl-names: %d\n", ret);
			goto err_put_parent;
		}

		mux->states[i] = FUNC15(mux->pinctrl, name);
		if (FUNC0(mux->states[i])) {
			ret = FUNC1(mux->states[i]);
			FUNC2(dev, "Cannot look up pinctrl state %s: %d\n",
				name, ret);
			goto err_put_parent;
		}

		if (FUNC17(name, "idle"))
			continue;

		if (i != num_names - 1) {
			FUNC2(dev, "idle state must be last\n");
			ret = -EINVAL;
			goto err_put_parent;
		}
		muxc->deselect = i2c_mux_pinctrl_deselect;
	}

	root = FUNC12(&muxc->parent->dev);

	muxc->mux_locked = true;
	for (i = 0; i < num_names; i++) {
		if (root != FUNC9(mux->states[i])) {
			muxc->mux_locked = false;
			break;
		}
	}
	if (muxc->mux_locked)
		FUNC3(dev, "mux-locked i2c mux\n");

	/* Do not add any adapter for the idle state (if it's there at all). */
	for (i = 0; i < num_names - !!muxc->deselect; i++) {
		ret = FUNC5(muxc, 0, i, 0);
		if (ret)
			goto err_del_adapter;
	}

	return 0;

err_del_adapter:
	FUNC7(muxc);
err_put_parent:
	FUNC11(parent);

	return ret;
}