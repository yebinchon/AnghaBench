#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vf610_dac {int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; TYPE_2__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 struct iio_dev* FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct resource*) ; 
 int FUNC10 (struct iio_dev*) ; 
 struct vf610_dac* FUNC11 (struct iio_dev*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  vf610_dac_iio_channels ; 
 int /*<<< orphan*/  vf610_dac_iio_info ; 
 int /*<<< orphan*/  FUNC14 (struct vf610_dac*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct iio_dev *indio_dev;
	struct vf610_dac *info;
	struct resource *mem;
	int ret;

	indio_dev = FUNC8(&pdev->dev,
					sizeof(struct vf610_dac));
	if (!indio_dev) {
		FUNC5(&pdev->dev, "Failed allocating iio device\n");
		return -ENOMEM;
	}

	info = FUNC11(indio_dev);
	info->dev = &pdev->dev;

	mem = FUNC12(pdev, IORESOURCE_MEM, 0);
	info->regs = FUNC9(&pdev->dev, mem);
	if (FUNC1(info->regs))
		return FUNC2(info->regs);

	info->clk = FUNC7(&pdev->dev, "dac");
	if (FUNC1(info->clk)) {
		FUNC5(&pdev->dev, "Failed getting clock, err = %ld\n",
			FUNC2(info->clk));
		return FUNC2(info->clk);
	}

	FUNC13(pdev, indio_dev);

	indio_dev->name = FUNC6(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &vf610_dac_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = vf610_dac_iio_channels;
	indio_dev->num_channels = FUNC0(vf610_dac_iio_channels);

	ret = FUNC4(info->clk);
	if (ret) {
		FUNC5(&pdev->dev,
			"Could not prepare or enable the clock\n");
		return ret;
	}

	FUNC14(info);

	ret = FUNC10(indio_dev);
	if (ret) {
		FUNC5(&pdev->dev, "Couldn't register the device\n");
		goto error_iio_device_register;
	}

	return 0;

error_iio_device_register:
	FUNC3(info->clk);

	return ret;
}