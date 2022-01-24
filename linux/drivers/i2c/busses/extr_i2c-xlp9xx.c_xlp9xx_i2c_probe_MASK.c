#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_12__ {int nr; int /*<<< orphan*/  name; TYPE_9__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/ * algo; } ;
struct TYPE_11__ {scalar_t__ irq; } ;
struct xlp9xx_i2c_dev {scalar_t__ irq; TYPE_2__ adapter; TYPE_4__* dev; int /*<<< orphan*/  msg_complete; TYPE_1__ alert_data; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct resource*) ; 
 struct xlp9xx_i2c_dev* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlp9xx_i2c_dev*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (struct platform_device*,int) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  xlp9xx_i2c_algo ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct xlp9xx_i2c_dev*) ; 
 int /*<<< orphan*/  xlp9xx_i2c_isr ; 
 int FUNC18 (struct xlp9xx_i2c_dev*,struct platform_device*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct xlp9xx_i2c_dev *priv;
	struct resource *res;
	int err = 0;

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC6(&pdev->dev, res);
	if (FUNC2(priv->base))
		return FUNC3(priv->base);

	priv->irq = FUNC12(pdev, 0);
	if (priv->irq <= 0) {
		FUNC5(&pdev->dev, "invalid irq!\n");
		return priv->irq;
	}
	/* SMBAlert irq */
	priv->alert_data.irq = FUNC12(pdev, 1);
	if (priv->alert_data.irq <= 0)
		priv->alert_data.irq = 0;

	FUNC16(pdev, priv);
	FUNC17(priv);

	err = FUNC8(&pdev->dev, priv->irq, xlp9xx_i2c_isr, 0,
			       pdev->name, priv);
	if (err) {
		FUNC5(&pdev->dev, "IRQ request failed!\n");
		return err;
	}

	FUNC11(&priv->msg_complete);
	priv->adapter.dev.parent = &pdev->dev;
	priv->adapter.algo = &xlp9xx_i2c_algo;
	priv->adapter.class = I2C_CLASS_HWMON;
	FUNC1(&priv->adapter.dev, FUNC0(&pdev->dev));
	priv->adapter.dev.of_node = pdev->dev.of_node;
	priv->dev = &pdev->dev;

	FUNC15(priv->adapter.name, sizeof(priv->adapter.name), "xlp9xx-i2c");
	FUNC10(&priv->adapter, priv);

	err = FUNC9(&priv->adapter);
	if (err)
		return err;

	err = FUNC18(priv, pdev);
	if (err)
		FUNC4(&pdev->dev, "No active SMBus alert %d\n", err);

	FUNC14(pdev, priv);
	FUNC4(&pdev->dev, "I2C bus:%d added\n", priv->adapter.nr);

	return 0;
}