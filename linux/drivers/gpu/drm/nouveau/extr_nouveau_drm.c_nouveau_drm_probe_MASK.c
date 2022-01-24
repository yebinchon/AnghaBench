#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_2__* resource; } ;
struct nvkm_device {int dummy; } ;
struct drm_device {struct pci_dev* pdev; } ;
struct apertures_struct {int count; TYPE_1__* ranges; } ;
struct TYPE_7__ {int /*<<< orphan*/  driver_features; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {void* size; void* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_ATOMIC ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int IORESOURCE_ROM_SHADOW ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 size_t PCI_ROM_RESOURCE ; 
 int FUNC1 (struct drm_device*) ; 
 struct apertures_struct* FUNC2 (int) ; 
 TYPE_3__ driver_pci ; 
 struct drm_device* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct apertures_struct*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct apertures_struct*) ; 
 scalar_t__ nouveau_atomic ; 
 int /*<<< orphan*/  nouveau_config ; 
 char* nouveau_debug ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*) ; 
 int nouveau_modeset ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_device**) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,char*,int,int,unsigned long long,struct nvkm_device**) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 void* FUNC14 (struct pci_dev*,int) ; 
 void* FUNC15 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 scalar_t__ FUNC18 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC19(struct pci_dev *pdev,
			     const struct pci_device_id *pent)
{
	struct nvkm_device *device;
	struct drm_device *drm_dev;
	struct apertures_struct *aper;
	bool boot = false;
	int ret;

	if (FUNC18(pdev))
		return -EPROBE_DEFER;

	/* We need to check that the chipset is supported before booting
	 * fbdev off the hardware, as there's no way to put it back.
	 */
	ret = FUNC11(pdev, nouveau_config, "error",
				  true, false, 0, &device);
	if (ret)
		return ret;

	FUNC10(&device);

	/* Remove conflicting drivers (vesafb, efifb etc). */
	aper = FUNC2(3);
	if (!aper)
		return -ENOMEM;

	aper->ranges[0].base = FUNC15(pdev, 1);
	aper->ranges[0].size = FUNC14(pdev, 1);
	aper->count = 1;

	if (FUNC14(pdev, 2)) {
		aper->ranges[aper->count].base = FUNC15(pdev, 2);
		aper->ranges[aper->count].size = FUNC14(pdev, 2);
		aper->count++;
	}

	if (FUNC14(pdev, 3)) {
		aper->ranges[aper->count].base = FUNC15(pdev, 3);
		aper->ranges[aper->count].size = FUNC14(pdev, 3);
		aper->count++;
	}

#ifdef CONFIG_X86
	boot = pdev->resource[PCI_ROM_RESOURCE].flags & IORESOURCE_ROM_SHADOW;
#endif
	if (nouveau_modeset != 2)
		FUNC6(aper, "nouveaufb", boot);
	FUNC7(aper);

	ret = FUNC11(pdev, nouveau_config, nouveau_debug,
				  true, true, ~0ULL, &device);
	if (ret)
		return ret;

	FUNC17(pdev);

	if (nouveau_atomic)
		driver_pci.driver_features |= DRIVER_ATOMIC;

	drm_dev = FUNC3(&driver_pci, &pdev->dev);
	if (FUNC0(drm_dev)) {
		ret = FUNC1(drm_dev);
		goto fail_nvkm;
	}

	ret = FUNC13(pdev);
	if (ret)
		goto fail_drm;

	drm_dev->pdev = pdev;
	FUNC16(pdev, drm_dev);

	ret = FUNC9(drm_dev);
	if (ret)
		goto fail_pci;

	ret = FUNC5(drm_dev, pent->driver_data);
	if (ret)
		goto fail_drm_dev_init;

	return 0;

fail_drm_dev_init:
	FUNC8(drm_dev);
fail_pci:
	FUNC12(pdev);
fail_drm:
	FUNC4(drm_dev);
fail_nvkm:
	FUNC10(&device);
	return ret;
}