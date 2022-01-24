#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct nvif_device {int /*<<< orphan*/  object; } ;
struct TYPE_2__ {struct nvif_device device; } ;
struct nouveau_drm {int /*<<< orphan*/  hpd_work; TYPE_1__ client; } ;
struct drm_device {int /*<<< orphan*/  switch_power_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_SWITCH_POWER_ON ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int FUNC1 (struct drm_device*,int) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC5 (struct pci_dev*) ; 
 struct drm_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC12 (struct device*) ; 

__attribute__((used)) static int
FUNC13(struct device *dev)
{
	struct pci_dev *pdev = FUNC12(dev);
	struct drm_device *drm_dev = FUNC6(pdev);
	struct nouveau_drm *drm = FUNC2(drm_dev);
	struct nvif_device *device = &FUNC2(drm_dev)->client.device;
	int ret;

	if (!FUNC3()) {
		FUNC10(dev);
		return -EBUSY;
	}

	FUNC9(pdev, PCI_D0);
	FUNC7(pdev);
	ret = FUNC5(pdev);
	if (ret)
		return ret;
	FUNC8(pdev);

	ret = FUNC1(drm_dev, true);
	if (ret) {
		FUNC0(drm, "resume failed with: %d\n", ret);
		return ret;
	}

	/* do magic */
	FUNC4(&device->object, 0x088488, (1 << 25), (1 << 25));
	drm_dev->switch_power_state = DRM_SWITCH_POWER_ON;

	/* Monitors may have been connected / disconnected during suspend */
	FUNC11(&FUNC2(drm_dev)->hpd_work);

	return ret;
}