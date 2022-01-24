#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct vbox_private* dev_private; struct pci_dev* pdev; } ;
struct vbox_private {TYPE_1__ ddev; int /*<<< orphan*/  num_crtcs; int /*<<< orphan*/  fb_helper; int /*<<< orphan*/  hw_mutex; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VBE_DISPI_ID_HGSMI ; 
 int /*<<< orphan*/  driver ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vbox_private*) ; 
 struct vbox_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbox_fb_helper_funcs ; 
 int /*<<< orphan*/  FUNC11 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct vbox_private*) ; 
 int FUNC13 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct vbox_private*) ; 
 int FUNC15 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct vbox_private*) ; 
 int FUNC17 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct vbox_private*) ; 
 int FUNC19 (struct vbox_private*) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct vbox_private *vbox;
	int ret = 0;

	if (!FUNC10(VBE_DISPI_ID_HGSMI))
		return -ENODEV;

	vbox = FUNC5(sizeof(*vbox), GFP_KERNEL);
	if (!vbox)
		return -ENOMEM;

	ret = FUNC0(&vbox->ddev, &driver, &pdev->dev);
	if (ret) {
		FUNC4(vbox);
		return ret;
	}

	vbox->ddev.pdev = pdev;
	vbox->ddev.dev_private = vbox;
	FUNC9(pdev, vbox);
	FUNC6(&vbox->hw_mutex);

	ret = FUNC8(pdev);
	if (ret)
		goto err_dev_put;

	ret = FUNC13(vbox);
	if (ret)
		goto err_pci_disable;

	ret = FUNC17(vbox);
	if (ret)
		goto err_hw_fini;

	ret = FUNC19(vbox);
	if (ret)
		goto err_mm_fini;

	ret = FUNC15(vbox);
	if (ret)
		goto err_mode_fini;

	ret = FUNC3(&vbox->ddev, &vbox->fb_helper,
					&vbox_fb_helper_funcs, 32,
					vbox->num_crtcs);
	if (ret)
		goto err_irq_fini;

	ret = FUNC2(&vbox->ddev, 0);
	if (ret)
		goto err_fbdev_fini;

	return 0;

err_fbdev_fini:
	FUNC11(vbox);
err_irq_fini:
	FUNC14(vbox);
err_mode_fini:
	FUNC18(vbox);
err_mm_fini:
	FUNC16(vbox);
err_hw_fini:
	FUNC12(vbox);
err_pci_disable:
	FUNC7(pdev);
err_dev_put:
	FUNC1(&vbox->ddev);
	return ret;
}