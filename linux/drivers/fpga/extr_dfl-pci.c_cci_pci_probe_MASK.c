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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 

__attribute__((used)) static
int FUNC11(struct pci_dev *pcidev, const struct pci_device_id *pcidevid)
{
	int ret;

	ret = FUNC10(pcidev);
	if (ret < 0) {
		FUNC3(&pcidev->dev, "Failed to enable device %d.\n", ret);
		return ret;
	}

	ret = FUNC6(pcidev);
	if (ret && ret != -EINVAL)
		FUNC4(&pcidev->dev, "PCIE AER unavailable %d.\n", ret);

	FUNC9(pcidev);

	if (!FUNC8(pcidev, FUNC0(64))) {
		ret = FUNC7(pcidev, FUNC0(64));
		if (ret)
			goto disable_error_report_exit;
	} else if (!FUNC8(pcidev, FUNC0(32))) {
		ret = FUNC7(pcidev, FUNC0(32));
		if (ret)
			goto disable_error_report_exit;
	} else {
		ret = -EIO;
		FUNC3(&pcidev->dev, "No suitable DMA support available.\n");
		goto disable_error_report_exit;
	}

	ret = FUNC2(pcidev);
	if (ret) {
		FUNC3(&pcidev->dev, "Fail to init drvdata %d.\n", ret);
		goto disable_error_report_exit;
	}

	ret = FUNC1(pcidev);
	if (ret) {
		FUNC3(&pcidev->dev, "enumeration failure %d.\n", ret);
		goto disable_error_report_exit;
	}

	return ret;

disable_error_report_exit:
	FUNC5(pcidev);
	return ret;
}