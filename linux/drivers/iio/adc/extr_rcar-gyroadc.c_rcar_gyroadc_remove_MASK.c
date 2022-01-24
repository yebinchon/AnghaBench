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
struct rcar_gyroadc {int /*<<< orphan*/  clk; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct rcar_gyroadc* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rcar_gyroadc*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC3(pdev);
	struct rcar_gyroadc *priv = FUNC2(indio_dev);
	struct device *dev = priv->dev;

	FUNC1(indio_dev);
	FUNC5(dev);
	FUNC9(priv);
	FUNC6(dev);
	FUNC4(dev);
	FUNC7(dev);
	FUNC0(priv->clk);
	FUNC8(indio_dev);

	return 0;
}