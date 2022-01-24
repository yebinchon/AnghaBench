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
struct vmw_private {int suspend_locked; scalar_t__ enable_fb; int /*<<< orphan*/  dev; scalar_t__ suspend_state; int /*<<< orphan*/  reservation_sem; int /*<<< orphan*/  fman; } ;
struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_ID_2 ; 
 int /*<<< orphan*/  SVGA_REG_ID ; 
 int /*<<< orphan*/  FUNC0 (struct vmw_private*) ; 
 struct drm_device* FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct vmw_private* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct device *kdev)
{
	struct pci_dev *pdev = FUNC2(kdev);
	struct drm_device *dev = FUNC1(pdev);
	struct vmw_private *dev_priv = FUNC8(dev);
	int ret;

	FUNC11(dev_priv, SVGA_REG_ID, SVGA_ID_2);
	(void) FUNC9(dev_priv, SVGA_REG_ID);

	if (dev_priv->enable_fb)
		FUNC6(dev_priv);

	ret = FUNC10(dev_priv);
	if (ret)
		return ret;

	if (dev_priv->enable_fb)
		FUNC0(dev_priv);

	FUNC5(dev_priv->fman);
	dev_priv->suspend_locked = false;
	FUNC3(&dev_priv->reservation_sem);
	if (dev_priv->suspend_state)
		FUNC7(dev_priv->dev);

	if (dev_priv->enable_fb)
		FUNC4(dev_priv);

	return 0;
}