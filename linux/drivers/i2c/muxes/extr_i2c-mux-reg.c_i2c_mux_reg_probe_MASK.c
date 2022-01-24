#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_4__ {int reg_size; int n_values; int base_nr; unsigned int* classes; int /*<<< orphan*/ * values; scalar_t__ idle_in_use; scalar_t__ reg; int /*<<< orphan*/  parent; } ;
struct regmux {TYPE_2__ data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct i2c_mux_core {TYPE_1__* parent; int /*<<< orphan*/  deselect; struct regmux* priv; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct regmux* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct i2c_mux_core*,int,int /*<<< orphan*/ ,unsigned int) ; 
 struct i2c_mux_core* FUNC10 (struct i2c_adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  i2c_mux_reg_deselect ; 
 int FUNC12 (struct regmux*,struct platform_device*) ; 
 int /*<<< orphan*/  i2c_mux_reg_select ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,scalar_t__,int) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct i2c_mux_core*) ; 
 int FUNC17 (struct resource*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct i2c_mux_core *muxc;
	struct regmux *mux;
	struct i2c_adapter *parent;
	struct resource *res;
	unsigned int class;
	int i, ret, nr;

	mux = FUNC7(&pdev->dev, sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return -ENOMEM;

	if (FUNC4(&pdev->dev)) {
		FUNC14(&mux->data, FUNC4(&pdev->dev),
			sizeof(mux->data));
	} else {
		ret = FUNC12(mux, pdev);
		if (ret == -EPROBE_DEFER)
			return ret;

		if (ret < 0) {
			FUNC3(&pdev->dev, "Error parsing device tree");
			return ret;
		}
	}

	parent = FUNC8(mux->data.parent);
	if (!parent)
		return -EPROBE_DEFER;

	if (!mux->data.reg) {
		FUNC5(&pdev->dev,
			"Register not set, using platform resource\n");
		res = FUNC15(pdev, IORESOURCE_MEM, 0);
		mux->data.reg_size = FUNC17(res);
		mux->data.reg = FUNC6(&pdev->dev, res);
		if (FUNC0(mux->data.reg)) {
			ret = FUNC1(mux->data.reg);
			goto err_put_parent;
		}
	}

	if (mux->data.reg_size != 4 && mux->data.reg_size != 2 &&
	    mux->data.reg_size != 1) {
		FUNC3(&pdev->dev, "Invalid register size\n");
		ret = -EINVAL;
		goto err_put_parent;
	}

	muxc = FUNC10(parent, &pdev->dev, mux->data.n_values, 0, 0,
			     i2c_mux_reg_select, NULL);
	if (!muxc) {
		ret = -ENOMEM;
		goto err_put_parent;
	}
	muxc->priv = mux;

	FUNC16(pdev, muxc);

	if (mux->data.idle_in_use)
		muxc->deselect = i2c_mux_reg_deselect;

	for (i = 0; i < mux->data.n_values; i++) {
		nr = mux->data.base_nr ? (mux->data.base_nr + i) : 0;
		class = mux->data.classes ? mux->data.classes[i] : 0;

		ret = FUNC9(muxc, nr, mux->data.values[i], class);
		if (ret)
			goto err_del_mux_adapters;
	}

	FUNC2(&pdev->dev, "%d port mux on %s adapter\n",
		 mux->data.n_values, muxc->parent->name);

	return 0;

err_del_mux_adapters:
	FUNC11(muxc);
err_put_parent:
	FUNC13(parent);

	return ret;
}