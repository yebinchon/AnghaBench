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
struct qxl_device {int /*<<< orphan*/  ddev; } ;
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VGA_RSRC_LEGACY_IO ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*) ; 
 struct qxl_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qxl_device*) ; 
 int FUNC11 (struct qxl_device*,int /*<<< orphan*/ *,struct pci_dev*) ; 
 int /*<<< orphan*/  qxl_driver ; 
 int /*<<< orphan*/  FUNC12 (struct qxl_device*) ; 
 int FUNC13 (struct qxl_device*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct qxl_device *qdev;
	int ret;

	if (pdev->revision < 4) {
		FUNC0("qxl too old, doesn't support client_monitors_config,"
			  " use xf86-video-qxl in user mode");
		return -EINVAL; /* TODO: ENODEV ? */
	}

	qdev = FUNC7(sizeof(struct qxl_device), GFP_KERNEL);
	if (!qdev)
		return -ENOMEM;

	ret = FUNC9(pdev);
	if (ret)
		goto free_dev;

	ret = FUNC2(pdev, 0, "qxl");
	if (ret)
		goto disable_pci;

	if (FUNC5(pdev)) {
		ret = FUNC14(pdev, VGA_RSRC_LEGACY_IO);
		if (ret) {
			FUNC0("can't get legacy vga ioports\n");
			goto disable_pci;
		}
	}

	ret = FUNC11(qdev, &qxl_driver, pdev);
	if (ret)
		goto put_vga;

	ret = FUNC13(qdev);
	if (ret)
		goto unload;

	FUNC4(&qdev->ddev);

	/* Complete initialization. */
	ret = FUNC1(&qdev->ddev, ent->driver_data);
	if (ret)
		goto modeset_cleanup;

	FUNC3(&qdev->ddev, 32);
	return 0;

modeset_cleanup:
	FUNC12(qdev);
unload:
	FUNC10(qdev);
put_vga:
	if (FUNC5(pdev))
		FUNC15(pdev, VGA_RSRC_LEGACY_IO);
disable_pci:
	FUNC8(pdev);
free_dev:
	FUNC6(qdev);
	return ret;
}