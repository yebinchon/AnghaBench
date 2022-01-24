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
struct vmw_private {int suspend_locked; int /*<<< orphan*/  fman; scalar_t__ enable_fb; scalar_t__ suspend_state; int /*<<< orphan*/  reservation_sem; int /*<<< orphan*/  num_fifo_resources; int /*<<< orphan*/  bdev; int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC4 (struct pci_dev*) ; 
 struct pci_dev* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 struct vmw_private* FUNC17 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct vmw_private*) ; 

__attribute__((used)) static int FUNC22(struct device *kdev)
{
	struct pci_dev *pdev = FUNC5(kdev);
	struct drm_device *dev = FUNC4(pdev);
	struct vmw_private *dev_priv = FUNC17(dev);
	int ret;

	/*
	 * Unlock for vmw_kms_suspend.
	 * No user-space processes should be running now.
	 */
	FUNC8(&dev_priv->reservation_sem);
	ret = FUNC16(dev_priv->dev);
	if (ret) {
		FUNC7(&dev_priv->reservation_sem);
		FUNC0("Failed to freeze modesetting.\n");
		return ret;
	}
	if (dev_priv->enable_fb)
		FUNC10(dev_priv);

	FUNC7(&dev_priv->reservation_sem);
	FUNC9(dev_priv);
	FUNC21(dev_priv);
	FUNC18(dev_priv);
	FUNC6(&dev_priv->bdev);
	if (dev_priv->enable_fb)
		FUNC13(dev_priv);
	if (FUNC3(&dev_priv->num_fifo_resources) != 0) {
		FUNC0("Can't hibernate while 3D resources are active.\n");
		if (dev_priv->enable_fb)
			FUNC14(dev_priv);
		FUNC1(FUNC20(dev_priv));
		dev_priv->suspend_locked = false;
		FUNC8(&dev_priv->reservation_sem);
		if (dev_priv->suspend_state)
			FUNC15(dev);
		if (dev_priv->enable_fb)
			FUNC11(dev_priv);
		return -EBUSY;
	}

	FUNC12(dev_priv->fman);
	FUNC2(dev_priv);
	
	FUNC19(dev_priv);
	return 0;
}