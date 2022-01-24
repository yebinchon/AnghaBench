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
struct TYPE_4__ {int base; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  label; int /*<<< orphan*/  owner; struct device* parent; } ;
struct syscon_gpio_priv {int dreg_offset; int dir_reg_offset; TYPE_2__ chip; TYPE_1__* data; int /*<<< orphan*/  syscon; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {scalar_t__ parent; } ;
struct TYPE_3__ {int flags; scalar_t__ set; int /*<<< orphan*/  bit_count; scalar_t__ compatible; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIO_SYSCON_FEAT_IN ; 
 int GPIO_SYSCON_FEAT_OUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,TYPE_2__*,struct syscon_gpio_priv*) ; 
 struct syscon_gpio_priv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct device*) ; 
 int FUNC8 (struct device_node*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct syscon_gpio_priv*) ; 
 int /*<<< orphan*/  syscon_gpio_dir_in ; 
 int /*<<< orphan*/  syscon_gpio_dir_out ; 
 int /*<<< orphan*/  syscon_gpio_get ; 
 int /*<<< orphan*/  syscon_gpio_set ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct syscon_gpio_priv *priv;
	struct device_node *np = dev->of_node;
	int ret;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->data = FUNC7(dev);

	if (priv->data->compatible) {
		priv->syscon = FUNC11(
					priv->data->compatible);
		if (FUNC0(priv->syscon))
			return FUNC1(priv->syscon);
	} else {
		priv->syscon =
			FUNC12(np, "gpio,syscon-dev");
		if (FUNC0(priv->syscon) && np->parent)
			priv->syscon = FUNC10(np->parent);
		if (FUNC0(priv->syscon))
			return FUNC1(priv->syscon);

		ret = FUNC8(np, "gpio,syscon-dev", 1,
						 &priv->dreg_offset);
		if (ret)
			FUNC3(dev, "can't read the data register offset!\n");

		priv->dreg_offset <<= 3;

		ret = FUNC8(np, "gpio,syscon-dev", 2,
						 &priv->dir_reg_offset);
		if (ret)
			FUNC2(dev, "can't read the dir register offset!\n");

		priv->dir_reg_offset <<= 3;
	}

	priv->chip.parent = dev;
	priv->chip.owner = THIS_MODULE;
	priv->chip.label = FUNC4(dev);
	priv->chip.base = -1;
	priv->chip.ngpio = priv->data->bit_count;
	priv->chip.get = syscon_gpio_get;
	if (priv->data->flags & GPIO_SYSCON_FEAT_IN)
		priv->chip.direction_input = syscon_gpio_dir_in;
	if (priv->data->flags & GPIO_SYSCON_FEAT_OUT) {
		priv->chip.set = priv->data->set ? : syscon_gpio_set;
		priv->chip.direction_output = syscon_gpio_dir_out;
	}

	FUNC9(pdev, priv);

	return FUNC5(&pdev->dev, &priv->chip, priv);
}