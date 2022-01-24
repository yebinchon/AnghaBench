#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  retries; TYPE_4__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct ismt_priv {TYPE_2__ adapter; int /*<<< orphan*/  smba; struct pci_dev* pci_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  ISMT_MAX_RETRIES ; 
 size_t SMBBAR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct ismt_priv* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct ismt_priv*) ; 
 int FUNC9 (struct ismt_priv*) ; 
 TYPE_1__ ismt_driver ; 
 int /*<<< orphan*/  FUNC10 (struct ismt_priv*) ; 
 int FUNC11 (struct ismt_priv*) ; 
 int FUNC12 (struct pci_dev*,size_t,int /*<<< orphan*/ ) ; 
 unsigned long FUNC13 (struct pci_dev*,size_t) ; 
 unsigned long FUNC14 (struct pci_dev*,size_t) ; 
 scalar_t__ FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct ismt_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,size_t,unsigned long) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 

__attribute__((used)) static int
FUNC22(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int err;
	struct ismt_priv *priv;
	unsigned long start, len;

	priv = FUNC6(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC17(pdev, priv);

	FUNC8(&priv->adapter, priv);
	priv->adapter.owner = THIS_MODULE;
	priv->adapter.class = I2C_CLASS_HWMON;
	priv->adapter.algo = &smbus_algorithm;
	priv->adapter.dev.parent = &pdev->dev;
	FUNC1(&priv->adapter.dev, FUNC0(&pdev->dev));
	priv->adapter.retries = ISMT_MAX_RETRIES;

	priv->pci_dev = pdev;

	err = FUNC19(pdev);
	if (err) {
		FUNC5(&pdev->dev, "Failed to enable SMBus PCI device (%d)\n",
			err);
		return err;
	}

	/* enable bus mastering */
	FUNC18(pdev);

	/* Determine the address of the SMBus area */
	start = FUNC14(pdev, SMBBAR);
	len = FUNC13(pdev, SMBBAR);
	if (!start || !len) {
		FUNC5(&pdev->dev,
			"SMBus base address uninitialized, upgrade BIOS\n");
		return -ENODEV;
	}

	FUNC21(priv->adapter.name, sizeof(priv->adapter.name),
		 "SMBus iSMT adapter at %lx", start);

	FUNC4(&priv->pci_dev->dev, " start=0x%lX\n", start);
	FUNC4(&priv->pci_dev->dev, " len=0x%lX\n", len);

	err = FUNC3(&pdev->resource[SMBBAR]);
	if (err) {
		FUNC5(&pdev->dev, "ACPI resource conflict!\n");
		return err;
	}

	err = FUNC12(pdev, SMBBAR, ismt_driver.name);
	if (err) {
		FUNC5(&pdev->dev,
			"Failed to request SMBus region 0x%lx-0x%lx\n",
			start, start + len);
		return err;
	}

	priv->smba = FUNC20(pdev, SMBBAR, len);
	if (!priv->smba) {
		FUNC5(&pdev->dev, "Unable to ioremap SMBus BAR\n");
		return -ENODEV;
	}

	if ((FUNC16(pdev, FUNC2(64)) != 0) ||
	    (FUNC15(pdev, FUNC2(64)) != 0)) {
		if ((FUNC16(pdev, FUNC2(32)) != 0) ||
		    (FUNC15(pdev,
						 FUNC2(32)) != 0)) {
			FUNC5(&pdev->dev, "pci_set_dma_mask fail %p\n",
				pdev);
			return -ENODEV;
		}
	}

	err = FUNC9(priv);
	if (err)
		return err;

	FUNC10(priv);

	err = FUNC11(priv);
	if (err)
		return err;

	err = FUNC7(&priv->adapter);
	if (err)
		return -ENODEV;
	return 0;
}