#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct priv {TYPE_1__* bus; int /*<<< orphan*/  base; int /*<<< orphan*/  mapbase; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  get_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAM_HEADER_SIZE ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IORESOURCE_IO ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct priv* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  mcb_pci_get_irq ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 unsigned long FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct resource *res;
	struct priv *priv;
	int ret;
	unsigned long flags;

	priv = FUNC6(&pdev->dev, sizeof(struct priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	ret = FUNC12(pdev);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to enable PCI device\n");
		return -ENODEV;
	}
	FUNC16(pdev);

	priv->mapbase = FUNC14(pdev, 0);
	if (!priv->mapbase) {
		FUNC4(&pdev->dev, "No PCI resource\n");
		ret = -ENODEV;
		goto out_disable;
	}

	res = FUNC7(&pdev->dev, priv->mapbase,
				      CHAM_HEADER_SIZE,
				      KBUILD_MODNAME);
	if (!res) {
		FUNC4(&pdev->dev, "Failed to request PCI memory\n");
		ret = -EBUSY;
		goto out_disable;
	}

	priv->base = FUNC5(&pdev->dev, priv->mapbase, CHAM_HEADER_SIZE);
	if (!priv->base) {
		FUNC4(&pdev->dev, "Cannot ioremap\n");
		ret = -ENOMEM;
		goto out_disable;
	}

	flags = FUNC13(pdev, 0);
	if (flags & IORESOURCE_IO) {
		ret = -ENOTSUPP;
		FUNC4(&pdev->dev,
			"IO mapped PCI devices are not supported\n");
		goto out_disable;
	}

	FUNC15(pdev, priv);

	priv->bus = FUNC8(&pdev->dev);
	if (FUNC0(priv->bus)) {
		ret = FUNC1(priv->bus);
		goto out_disable;
	}

	priv->bus->get_irq = mcb_pci_get_irq;

	ret = FUNC2(priv->bus, priv->mapbase, priv->base);
	if (ret < 0)
		goto out_mcb_bus;

	FUNC3(&pdev->dev, "Found %d cells\n", ret);

	FUNC9(priv->bus);

	return 0;

out_mcb_bus:
	FUNC10(priv->bus);
out_disable:
	FUNC11(pdev);
	return ret;
}