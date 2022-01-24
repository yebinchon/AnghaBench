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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mbox_test_device {int /*<<< orphan*/  waitq; void* rx_buffer; void* rx_channel; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; void* tx_channel; int /*<<< orphan*/ * tx_mmio; int /*<<< orphan*/ * rx_mmio; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MBOX_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct platform_device*,struct mbox_test_device*) ; 
 void* FUNC8 (struct platform_device*,char*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mbox_test_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct mbox_test_device *tdev;
	struct resource *res;
	resource_size_t size;
	int ret;

	tdev = FUNC5(&pdev->dev, sizeof(*tdev), GFP_KERNEL);
	if (!tdev)
		return -ENOMEM;

	/* It's okay for MMIO to be NULL */
	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	tdev->tx_mmio = FUNC4(&pdev->dev, res);
	if (FUNC1(tdev->tx_mmio) == -EBUSY) {
		/* if reserved area in SRAM, try just ioremap */
		size = FUNC11(res);
		tdev->tx_mmio = FUNC3(&pdev->dev, res->start, size);
	} else if (FUNC0(tdev->tx_mmio)) {
		tdev->tx_mmio = NULL;
	}

	/* If specified, second reg entry is Rx MMIO */
	res = FUNC9(pdev, IORESOURCE_MEM, 1);
	tdev->rx_mmio = FUNC4(&pdev->dev, res);
	if (FUNC1(tdev->rx_mmio) == -EBUSY) {
		size = FUNC11(res);
		tdev->rx_mmio = FUNC3(&pdev->dev, res->start, size);
	} else if (FUNC0(tdev->rx_mmio)) {
		tdev->rx_mmio = tdev->tx_mmio;
	}

	tdev->tx_channel = FUNC8(pdev, "tx");
	tdev->rx_channel = FUNC8(pdev, "rx");

	if (!tdev->tx_channel && !tdev->rx_channel)
		return -EPROBE_DEFER;

	/* If Rx is not specified but has Rx MMIO, then Rx = Tx */
	if (!tdev->rx_channel && (tdev->rx_mmio != tdev->tx_mmio))
		tdev->rx_channel = tdev->tx_channel;

	tdev->dev = &pdev->dev;
	FUNC10(pdev, tdev);

	FUNC12(&tdev->lock);

	if (tdev->rx_channel) {
		tdev->rx_buffer = FUNC5(&pdev->dev,
					       MBOX_MAX_MSG_LEN, GFP_KERNEL);
		if (!tdev->rx_buffer)
			return -ENOMEM;
	}

	ret = FUNC7(pdev, tdev);
	if (ret)
		return ret;

	FUNC6(&tdev->waitq);
	FUNC2(&pdev->dev, "Successfully registered\n");

	return 0;
}