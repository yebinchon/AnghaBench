#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stm32_dac {int /*<<< orphan*/  common; } ;
struct TYPE_6__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct iio_dev* FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,struct iio_dev*) ; 
 struct stm32_dac* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  stm32_dac_iio_info ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct iio_dev *indio_dev;
	struct stm32_dac *dac;
	int ret;

	if (!np)
		return -ENODEV;

	indio_dev = FUNC2(&pdev->dev, sizeof(*dac));
	if (!indio_dev)
		return -ENOMEM;
	FUNC5(pdev, indio_dev);

	dac = FUNC4(indio_dev);
	dac->common = FUNC0(pdev->dev.parent);
	indio_dev->name = FUNC1(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &stm32_dac_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC6(indio_dev);
	if (ret < 0)
		return ret;

	return FUNC3(&pdev->dev, indio_dev);
}