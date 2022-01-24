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
struct resource {int dummy; } ;
struct rcar_gyroadc {int model; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
typedef  enum rcar_gyroadc_model { ____Placeholder_rcar_gyroadc_model } rcar_gyroadc_model ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCAR_GYROADC_RUNTIME_PM_DELAY_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 int FUNC8 (struct iio_dev*) ; 
 struct rcar_gyroadc* FUNC9 (struct iio_dev*) ; 
 scalar_t__ FUNC10 (struct device*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct rcar_gyroadc*) ; 
 int /*<<< orphan*/  FUNC22 (struct rcar_gyroadc*) ; 
 int /*<<< orphan*/  FUNC23 (struct rcar_gyroadc*) ; 
 int /*<<< orphan*/  rcar_gyroadc_iio_info ; 
 int FUNC24 (struct iio_dev*) ; 
 int FUNC25 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rcar_gyroadc *priv;
	struct iio_dev *indio_dev;
	struct resource *mem;
	int ret;

	indio_dev = FUNC6(dev, sizeof(*priv));
	if (!indio_dev)
		return -ENOMEM;

	priv = FUNC9(indio_dev);
	priv->dev = dev;

	mem = FUNC11(pdev, IORESOURCE_MEM, 0);
	priv->regs = FUNC7(dev, mem);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	priv->clk = FUNC5(dev, "fck");
	if (FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		if (ret != -EPROBE_DEFER)
			FUNC4(dev, "Failed to get IF clock (ret=%i)\n", ret);
		return ret;
	}

	ret = FUNC25(indio_dev);
	if (ret)
		return ret;

	ret = FUNC24(indio_dev);
	if (ret)
		return ret;

	priv->model = (enum rcar_gyroadc_model)
		FUNC10(&pdev->dev);

	FUNC12(pdev, indio_dev);

	indio_dev->name = DRIVER_NAME;
	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &rcar_gyroadc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC3(priv->clk);
	if (ret) {
		FUNC4(dev, "Could not prepare or enable the IF clock.\n");
		goto err_clk_if_enable;
	}

	FUNC17(dev, RCAR_GYROADC_RUNTIME_PM_DELAY_MS);
	FUNC19(dev);
	FUNC14(dev);

	FUNC15(dev);
	FUNC21(priv);
	FUNC22(priv);

	ret = FUNC8(indio_dev);
	if (ret) {
		FUNC4(dev, "Couldn't register IIO device.\n");
		goto err_iio_device_register;
	}

	FUNC16(dev);

	return 0;

err_iio_device_register:
	FUNC23(priv);
	FUNC16(dev);
	FUNC13(dev);
	FUNC18(dev);
	FUNC2(priv->clk);
err_clk_if_enable:
	FUNC20(indio_dev);

	return ret;
}