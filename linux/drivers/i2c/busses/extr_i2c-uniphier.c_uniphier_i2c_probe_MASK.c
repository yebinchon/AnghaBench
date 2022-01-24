#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bus_recovery_info; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct uniphier_i2c_priv {unsigned long clk_cycle; int /*<<< orphan*/  clk; TYPE_2__ adap; int /*<<< orphan*/  comp; int /*<<< orphan*/  membase; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 unsigned long UNIPHIER_I2C_DEFAULT_SPEED ; 
 unsigned long UNIPHIER_I2C_MAX_SPEED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct uniphier_i2c_priv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uniphier_i2c_priv*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct uniphier_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,unsigned long*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct uniphier_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  uniphier_i2c_algo ; 
 int /*<<< orphan*/  uniphier_i2c_bus_recovery_info ; 
 int /*<<< orphan*/  FUNC17 (struct uniphier_i2c_priv*) ; 
 int /*<<< orphan*/  uniphier_i2c_interrupt ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_i2c_priv *priv;
	u32 bus_speed;
	unsigned long clk_rate;
	int irq, ret;

	priv = FUNC7(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->membase = FUNC8(pdev, 0);
	if (FUNC0(priv->membase))
		return FUNC1(priv->membase);

	irq = FUNC14(pdev, 0);
	if (irq < 0) {
		FUNC5(dev, "failed to get IRQ number\n");
		return irq;
	}

	if (FUNC13(dev->of_node, "clock-frequency", &bus_speed))
		bus_speed = UNIPHIER_I2C_DEFAULT_SPEED;

	if (!bus_speed || bus_speed > UNIPHIER_I2C_MAX_SPEED) {
		FUNC5(dev, "invalid clock-frequency %d\n", bus_speed);
		return -EINVAL;
	}

	priv->clk = FUNC6(dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC5(dev, "failed to get clock\n");
		return FUNC1(priv->clk);
	}

	ret = FUNC4(priv->clk);
	if (ret)
		return ret;

	clk_rate = FUNC3(priv->clk);
	if (!clk_rate) {
		FUNC5(dev, "input clock rate should not be zero\n");
		ret = -EINVAL;
		goto disable_clk;
	}

	priv->clk_cycle = clk_rate / bus_speed;
	FUNC12(&priv->comp);
	priv->adap.owner = THIS_MODULE;
	priv->adap.algo = &uniphier_i2c_algo;
	priv->adap.dev.parent = dev;
	priv->adap.dev.of_node = dev->of_node;
	FUNC16(priv->adap.name, "UniPhier I2C", sizeof(priv->adap.name));
	priv->adap.bus_recovery_info = &uniphier_i2c_bus_recovery_info;
	FUNC11(&priv->adap, priv);
	FUNC15(pdev, priv);

	FUNC17(priv);

	ret = FUNC9(dev, irq, uniphier_i2c_interrupt, 0, pdev->name,
			       priv);
	if (ret) {
		FUNC5(dev, "failed to request irq %d\n", irq);
		goto disable_clk;
	}

	ret = FUNC10(&priv->adap);
disable_clk:
	if (ret)
		FUNC2(priv->clk);

	return ret;
}