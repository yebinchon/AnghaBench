#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct property {int length; void* value; void* name; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct i2c_demux_pinctrl_priv {int num_chan; TYPE_1__* chan; TYPE_2__* dev; int /*<<< orphan*/  bus_name; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  chgset; struct device_node* parent_np; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  chan ; 
 int /*<<< orphan*/  dev_attr_available_masters ; 
 int /*<<< orphan*/  dev_attr_current_master ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct property* FUNC3 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct i2c_demux_pinctrl_priv* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_demux_pinctrl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct device_node*,struct property*) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int) ; 
 int FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct i2c_demux_pinctrl_priv*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_demux_pinctrl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct i2c_demux_pinctrl_priv *priv;
	struct property *props;
	int num_chan, i, j, err;

	num_chan = FUNC10(np, "i2c-parent", NULL);
	if (num_chan < 2) {
		FUNC0(&pdev->dev, "Need at least two I2C masters to switch\n");
		return -EINVAL;
	}

	priv = FUNC5(&pdev->dev, FUNC16(priv, chan, num_chan),
			    GFP_KERNEL);

	props = FUNC3(&pdev->dev, num_chan, sizeof(*props), GFP_KERNEL);

	if (!priv || !props)
		return -ENOMEM;

	err = FUNC13(np, "i2c-bus-name", &priv->bus_name);
	if (err)
		return err;

	for (i = 0; i < num_chan; i++) {
		struct device_node *adap_np;

		adap_np = FUNC12(np, "i2c-parent", i);
		if (!adap_np) {
			FUNC0(&pdev->dev, "can't get phandle for parent %d\n", i);
			err = -ENOENT;
			goto err_rollback;
		}
		priv->chan[i].parent_np = adap_np;

		props[i].name = FUNC4(&pdev->dev, "status", GFP_KERNEL);
		props[i].value = FUNC4(&pdev->dev, "ok", GFP_KERNEL);
		props[i].length = 3;

		FUNC8(&priv->chan[i].chgset);
		FUNC9(&priv->chan[i].chgset, adap_np, &props[i]);
	}

	priv->num_chan = num_chan;
	priv->dev = &pdev->dev;

	FUNC14(pdev, priv);

	FUNC15(&pdev->dev);

	/* switch to first parent as active master */
	FUNC6(priv, 0);

	err = FUNC1(&pdev->dev, &dev_attr_available_masters);
	if (err)
		goto err_rollback;

	err = FUNC1(&pdev->dev, &dev_attr_current_master);
	if (err)
		goto err_rollback_available;

	return 0;

err_rollback_available:
	FUNC2(&pdev->dev, &dev_attr_available_masters);
err_rollback:
	for (j = 0; j < i; j++) {
		FUNC11(priv->chan[j].parent_np);
		FUNC7(&priv->chan[j].chgset);
	}

	return err;
}