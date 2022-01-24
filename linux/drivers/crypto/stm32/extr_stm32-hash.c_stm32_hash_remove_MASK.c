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
struct stm32_hash_dev {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; scalar_t__ dma_lch; int /*<<< orphan*/  list; int /*<<< orphan*/  engine; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct stm32_hash_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ stm32_hash ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_hash_dev*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct stm32_hash_dev *hdev;
	int ret;

	hdev = FUNC4(pdev);
	if (!hdev)
		return -ENODEV;

	ret = FUNC6(hdev->dev);
	if (ret < 0)
		return ret;

	FUNC10(hdev);

	FUNC1(hdev->engine);

	FUNC8(&stm32_hash.lock);
	FUNC3(&hdev->list);
	FUNC9(&stm32_hash.lock);

	if (hdev->dma_lch)
		FUNC2(hdev->dma_lch);

	FUNC5(hdev->dev);
	FUNC7(hdev->dev);

	FUNC0(hdev->clk);

	return 0;
}