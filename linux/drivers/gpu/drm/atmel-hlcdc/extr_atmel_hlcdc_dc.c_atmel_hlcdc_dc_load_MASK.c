#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_10__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct drm_device {TYPE_3__* dev; struct atmel_hlcdc_dc* dev_private; } ;
struct TYPE_13__ {int /*<<< orphan*/  wait; } ;
struct atmel_hlcdc_dc {int /*<<< orphan*/  wq; TYPE_9__* hlcdc; TYPE_2__* desc; TYPE_1__ commit; } ;
struct TYPE_16__ {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  periph_clk; int /*<<< orphan*/  irq; } ;
struct TYPE_14__ {scalar_t__ fixed_clksrc; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  atmel_hlcdc_of_match ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 TYPE_9__* FUNC6 (TYPE_10__*) ; 
 struct atmel_hlcdc_dc* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 struct platform_device* FUNC19 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC20(struct drm_device *dev)
{
	struct platform_device *pdev = FUNC19(dev->dev);
	const struct of_device_id *match;
	struct atmel_hlcdc_dc *dc;
	int ret;

	match = FUNC13(atmel_hlcdc_of_match, dev->dev->parent->of_node);
	if (!match) {
		FUNC5(&pdev->dev, "invalid compatible string\n");
		return -ENODEV;
	}

	if (!match->data) {
		FUNC5(&pdev->dev, "invalid hlcdc description\n");
		return -EINVAL;
	}

	dc = FUNC7(dev->dev, sizeof(*dc), GFP_KERNEL);
	if (!dc)
		return -ENOMEM;

	dc->wq = FUNC0("atmel-hlcdc-dc", 0);
	if (!dc->wq)
		return -ENOMEM;

	FUNC12(&dc->commit.wait);
	dc->desc = match->data;
	dc->hlcdc = FUNC6(dev->dev->parent);
	dev->dev_private = dc;

	if (dc->desc->fixed_clksrc) {
		ret = FUNC3(dc->hlcdc->sys_clk);
		if (ret) {
			FUNC5(dev->dev, "failed to enable sys_clk\n");
			goto err_destroy_wq;
		}
	}

	ret = FUNC3(dc->hlcdc->periph_clk);
	if (ret) {
		FUNC5(dev->dev, "failed to enable periph_clk\n");
		goto err_sys_clk_disable;
	}

	FUNC16(dev->dev);

	ret = FUNC11(dev, 1);
	if (ret < 0) {
		FUNC5(dev->dev, "failed to initialize vblank\n");
		goto err_periph_clk_disable;
	}

	ret = FUNC1(dev);
	if (ret < 0) {
		FUNC5(dev->dev, "failed to initialize mode setting\n");
		goto err_periph_clk_disable;
	}

	FUNC10(dev);

	FUNC17(dev->dev);
	ret = FUNC8(dev, dc->hlcdc->irq);
	FUNC18(dev->dev);
	if (ret < 0) {
		FUNC5(dev->dev, "failed to install IRQ handler\n");
		goto err_periph_clk_disable;
	}

	FUNC14(pdev, dev);

	FUNC9(dev);

	return 0;

err_periph_clk_disable:
	FUNC15(dev->dev);
	FUNC2(dc->hlcdc->periph_clk);
err_sys_clk_disable:
	if (dc->desc->fixed_clksrc)
		FUNC2(dc->hlcdc->sys_clk);

err_destroy_wq:
	FUNC4(dc->wq);

	return ret;
}