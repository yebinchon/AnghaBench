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
struct pci_dev {int dummy; } ;
struct hifn_dma {int dummy; } ;
struct hifn_device {scalar_t__* bar; int /*<<< orphan*/  desc_dma; int /*<<< orphan*/  desc_virt; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hifn_device* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	int i;
	struct hifn_device *dev;

	dev = FUNC11(pdev);

	if (dev) {
		FUNC0(&dev->work);

		FUNC6(dev);
		FUNC5(dev);
		FUNC3(dev, 1);
		FUNC4(dev);

		FUNC1(dev->irq, dev);
		FUNC13(&dev->tasklet);

		FUNC2(dev);

		FUNC10(pdev, sizeof(struct hifn_dma),
				dev->desc_virt, dev->desc_dma);
		for (i = 0; i < 3; ++i)
			if (dev->bar[i])
				FUNC7(dev->bar[i]);

		FUNC8(dev);
	}

	FUNC12(pdev);
	FUNC9(pdev);
}