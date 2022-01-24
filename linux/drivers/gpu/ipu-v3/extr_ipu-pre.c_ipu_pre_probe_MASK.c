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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct ipu_pre {int /*<<< orphan*/  list; struct device* dev; int /*<<< orphan*/  clk_axi; int /*<<< orphan*/  buffer_virt; int /*<<< orphan*/  buffer_paddr; int /*<<< orphan*/  iram; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IPU_PRE_MAX_WIDTH ; 
 int IPU_PRE_NUM_SCANLINES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  available_pres ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct ipu_pre* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipu_pre_list ; 
 int /*<<< orphan*/  ipu_pre_list_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct ipu_pre*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct ipu_pre *pre;

	pre = FUNC5(dev, sizeof(*pre), GFP_KERNEL);
	if (!pre)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	pre->regs = FUNC4(&pdev->dev, res);
	if (FUNC0(pre->regs))
		return FUNC1(pre->regs);

	pre->clk_axi = FUNC3(dev, "axi");
	if (FUNC0(pre->clk_axi))
		return FUNC1(pre->clk_axi);

	pre->iram = FUNC10(dev->of_node, "fsl,iram", 0);
	if (!pre->iram)
		return -EPROBE_DEFER;

	/*
	 * Allocate IRAM buffer with maximum size. This could be made dynamic,
	 * but as there is no other user of this IRAM region and we can fit all
	 * max sized buffers into it, there is no need yet.
	 */
	pre->buffer_virt = FUNC6(pre->iram, IPU_PRE_MAX_WIDTH *
					      IPU_PRE_NUM_SCANLINES * 4,
					      &pre->buffer_paddr);
	if (!pre->buffer_virt)
		return -ENOMEM;

	FUNC2(pre->clk_axi);

	pre->dev = dev;
	FUNC12(pdev, pre);
	FUNC8(&ipu_pre_list_mutex);
	FUNC7(&pre->list, &ipu_pre_list);
	available_pres++;
	FUNC9(&ipu_pre_list_mutex);

	return 0;
}