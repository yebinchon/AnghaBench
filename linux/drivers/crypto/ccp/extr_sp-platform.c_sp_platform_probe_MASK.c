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
struct sp_platform {int coherent; } ;
struct sp_device {int /*<<< orphan*/  axcache; int /*<<< orphan*/  io_map; int /*<<< orphan*/  dev_vdata; struct sp_platform* dev_specific; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
typedef  enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NONE ; 
 int /*<<< orphan*/  CACHE_WB_NO_ALLOC ; 
 int DEV_DMA_COHERENT ; 
 int DEV_DMA_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct sp_device*) ; 
 int FUNC6 (struct device*) ; 
 struct sp_platform* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 struct sp_device* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct sp_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 int FUNC14 (struct sp_device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sp_device *sp;
	struct sp_platform *sp_platform;
	struct device *dev = &pdev->dev;
	enum dev_dma_attr attr;
	int ret;

	ret = -ENOMEM;
	sp = FUNC10(dev);
	if (!sp)
		goto e_err;

	sp_platform = FUNC7(dev, sizeof(*sp_platform), GFP_KERNEL);
	if (!sp_platform)
		goto e_err;

	sp->dev_specific = sp_platform;
	sp->dev_vdata = pdev->dev.of_node ? FUNC13(pdev)
					 : FUNC11(pdev);
	if (!sp->dev_vdata) {
		ret = -ENODEV;
		FUNC3(dev, "missing driver data\n");
		goto e_err;
	}

	sp->io_map = FUNC8(pdev, 0);
	if (FUNC1(sp->io_map)) {
		ret = FUNC2(sp->io_map);
		goto e_err;
	}

	attr = FUNC6(dev);
	if (attr == DEV_DMA_NOT_SUPPORTED) {
		FUNC3(dev, "DMA is not supported");
		goto e_err;
	}

	sp_platform->coherent = (attr == DEV_DMA_COHERENT);
	if (sp_platform->coherent)
		sp->axcache = CACHE_WB_NO_ALLOC;
	else
		sp->axcache = CACHE_NONE;

	ret = FUNC9(dev, FUNC0(48));
	if (ret) {
		FUNC3(dev, "dma_set_mask_and_coherent failed (%d)\n", ret);
		goto e_err;
	}

	ret = FUNC12(sp);
	if (ret)
		goto e_err;

	FUNC5(dev, sp);

	ret = FUNC14(sp);
	if (ret)
		goto e_err;

	FUNC4(dev, "enabled\n");

	return 0;

e_err:
	FUNC4(dev, "initialization failed\n");
	return ret;
}