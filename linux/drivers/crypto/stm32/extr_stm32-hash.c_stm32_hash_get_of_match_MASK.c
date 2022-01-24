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
struct stm32_hash_dev {scalar_t__ dma_maxburst; int /*<<< orphan*/  pdata; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct stm32_hash_dev *hdev,
				   struct device *dev)
{
	hdev->pdata = FUNC2(dev);
	if (!hdev->pdata) {
		FUNC0(dev, "no compatible OF match\n");
		return -EINVAL;
	}

	if (FUNC3(dev->of_node, "dma-maxburst",
				 &hdev->dma_maxburst)) {
		FUNC1(dev, "dma-maxburst not specified, using 0\n");
		hdev->dma_maxburst = 0;
	}

	return 0;
}