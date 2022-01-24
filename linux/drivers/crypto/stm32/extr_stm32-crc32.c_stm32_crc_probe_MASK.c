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
struct stm32_crc {int /*<<< orphan*/  clk; int /*<<< orphan*/  list; struct device* dev; int /*<<< orphan*/  regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRC_AUTOSUSPEND_DELAY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  algs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ crc_list ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 struct stm32_crc* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct stm32_crc*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct stm32_crc *crc;
	int ret;

	crc = FUNC9(dev, sizeof(*crc), GFP_KERNEL);
	if (!crc)
		return -ENOMEM;

	crc->dev = dev;

	crc->regs = FUNC10(pdev, 0);
	if (FUNC1(crc->regs)) {
		FUNC6(dev, "Cannot map CRC IO\n");
		return FUNC2(crc->regs);
	}

	crc->clk = FUNC8(dev, NULL);
	if (FUNC1(crc->clk)) {
		FUNC6(dev, "Could not get clock\n");
		return FUNC2(crc->clk);
	}

	ret = FUNC4(crc->clk);
	if (ret) {
		FUNC6(crc->dev, "Failed to enable clock\n");
		return ret;
	}

	FUNC17(dev, CRC_AUTOSUSPEND_DELAY);
	FUNC18(dev);

	FUNC14(dev);
	FUNC16(dev);
	FUNC13(dev);

	FUNC12(pdev, crc);

	FUNC19(&crc_list.lock);
	FUNC11(&crc->list, &crc_list.dev_list);
	FUNC20(&crc_list.lock);

	ret = FUNC5(algs, FUNC0(algs));
	if (ret) {
		FUNC6(dev, "Failed to register\n");
		FUNC3(crc->clk);
		return ret;
	}

	FUNC7(dev, "Initialized\n");

	FUNC15(dev);

	return 0;
}