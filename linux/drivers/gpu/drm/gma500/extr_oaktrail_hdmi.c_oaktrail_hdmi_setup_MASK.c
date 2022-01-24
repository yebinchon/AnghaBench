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
struct oaktrail_hdmi_dev {struct pci_dev* dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio; } ;
struct drm_psb_private {struct oaktrail_hdmi_dev* hdmi_priv; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct oaktrail_hdmi_dev*) ; 
 struct oaktrail_hdmi_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct oaktrail_hdmi_dev*) ; 

void FUNC12(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct pci_dev *pdev;
	struct oaktrail_hdmi_dev *hdmi_dev;
	int ret;

	pdev = FUNC8(PCI_VENDOR_ID_INTEL, 0x080d, NULL);
	if (!pdev)
		return;

	hdmi_dev = FUNC4(sizeof(struct oaktrail_hdmi_dev), GFP_KERNEL);
	if (!hdmi_dev) {
		FUNC0(dev->dev, "failed to allocate memory\n");
		goto out;
	}


	ret = FUNC7(pdev);
	if (ret) {
		FUNC0(dev->dev, "failed to enable hdmi controller\n");
		goto free;
	}

	hdmi_dev->mmio = FUNC10(pdev, 0);
	hdmi_dev->mmio_len = FUNC9(pdev, 0);
	hdmi_dev->regs = FUNC2(hdmi_dev->mmio, hdmi_dev->mmio_len);
	if (!hdmi_dev->regs) {
		FUNC0(dev->dev, "failed to map hdmi mmio\n");
		goto free;
	}

	hdmi_dev->dev = pdev;
	FUNC11(pdev, hdmi_dev);

	/* Initialize i2c controller */
	ret = FUNC6(hdmi_dev->dev);
	if (ret)
		FUNC0(dev->dev, "HDMI I2C initialization failed\n");

	dev_priv->hdmi_priv = hdmi_dev;
	FUNC5(dev);

	FUNC1(dev->dev, "HDMI hardware present.\n");

	return;

free:
	FUNC3(hdmi_dev);
out:
	return;
}