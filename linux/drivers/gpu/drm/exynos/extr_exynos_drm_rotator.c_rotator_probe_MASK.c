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
struct rot_variant {int /*<<< orphan*/  num_formats; int /*<<< orphan*/  formats; } ;
struct rot_context {int /*<<< orphan*/  clock; int /*<<< orphan*/  regs; struct device* dev; int /*<<< orphan*/  num_formats; int /*<<< orphan*/  formats; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROTATOR_AUTOSUSPEND_DELAY ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct rot_context* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rot_context*) ; 
 struct rot_variant* FUNC9 (struct device*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct rot_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  rotator_component_ops ; 
 int /*<<< orphan*/  rotator_irq_handler ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource	*regs_res;
	struct rot_context *rot;
	const struct rot_variant *variant;
	int irq;
	int ret;

	rot = FUNC7(dev, sizeof(*rot), GFP_KERNEL);
	if (!rot)
		return -ENOMEM;

	variant = FUNC9(dev);
	rot->formats = variant->formats;
	rot->num_formats = variant->num_formats;
	rot->dev = dev;
	regs_res = FUNC11(pdev, IORESOURCE_MEM, 0);
	rot->regs = FUNC6(dev, regs_res);
	if (FUNC0(rot->regs))
		return FUNC1(rot->regs);

	irq = FUNC10(pdev, 0);
	if (irq < 0) {
		FUNC3(dev, "failed to get irq\n");
		return irq;
	}

	ret = FUNC8(dev, irq, rotator_irq_handler, 0, FUNC4(dev),
			       rot);
	if (ret < 0) {
		FUNC3(dev, "failed to request irq\n");
		return ret;
	}

	rot->clock = FUNC5(dev, "rotator");
	if (FUNC0(rot->clock)) {
		FUNC3(dev, "failed to get clock\n");
		return FUNC1(rot->clock);
	}

	FUNC17(dev);
	FUNC16(dev, ROTATOR_AUTOSUSPEND_DELAY);
	FUNC15(dev);
	FUNC12(pdev, rot);

	ret = FUNC2(dev, &rotator_component_ops);
	if (ret)
		goto err_component;

	return 0;

err_component:
	FUNC14(dev);
	FUNC13(dev);
	return ret;
}