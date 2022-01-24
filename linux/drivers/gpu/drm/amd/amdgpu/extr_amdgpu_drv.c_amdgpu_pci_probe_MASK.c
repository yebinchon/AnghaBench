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
struct pci_device_id {unsigned long driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct drm_device {struct pci_dev* pdev; int /*<<< orphan*/  driver_features; } ;

/* Variables and functions */
 unsigned long AMD_ASIC_MASK ; 
 unsigned long AMD_EXP_HW_SUPPORT ; 
#define  CHIP_BONAIRE 137 
#define  CHIP_HAINAN 136 
#define  CHIP_HAWAII 135 
#define  CHIP_KABINI 134 
#define  CHIP_KAVERI 133 
#define  CHIP_MULLINS 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  DRIVER_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  amdgpu_cik_support ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  amdgpu_exp_hw_support ; 
 int /*<<< orphan*/  amdgpu_si_support ; 
 int /*<<< orphan*/  amdgpu_virtual_display ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct drm_device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*,unsigned long) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  kms_driver ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct drm_device*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	struct drm_device *dev;
	unsigned long flags = ent->driver_data;
	int ret, retry = 0;
	bool supports_atomic = false;

	if (!amdgpu_virtual_display &&
	    FUNC3(flags & AMD_ASIC_MASK))
		supports_atomic = true;

	if ((flags & AMD_EXP_HW_SUPPORT) && !amdgpu_exp_hw_support) {
		FUNC0("This hardware requires experimental hardware support.\n"
			 "See modparam exp_hw_support\n");
		return -ENODEV;
	}

#ifdef CONFIG_DRM_AMDGPU_SI
	if (!amdgpu_si_support) {
		switch (flags & AMD_ASIC_MASK) {
		case CHIP_TAHITI:
		case CHIP_PITCAIRN:
		case CHIP_VERDE:
		case CHIP_OLAND:
		case CHIP_HAINAN:
			dev_info(&pdev->dev,
				 "SI support provided by radeon.\n");
			dev_info(&pdev->dev,
				 "Use radeon.si_support=0 amdgpu.si_support=1 to override.\n"
				);
			return -ENODEV;
		}
	}
#endif
#ifdef CONFIG_DRM_AMDGPU_CIK
	if (!amdgpu_cik_support) {
		switch (flags & AMD_ASIC_MASK) {
		case CHIP_KAVERI:
		case CHIP_BONAIRE:
		case CHIP_HAWAII:
		case CHIP_KABINI:
		case CHIP_MULLINS:
			dev_info(&pdev->dev,
				 "CIK support provided by radeon.\n");
			dev_info(&pdev->dev,
				 "Use radeon.cik_support=0 amdgpu.cik_support=1 to override.\n"
				);
			return -ENODEV;
		}
	}
#endif

	/* Get rid of things like offb */
	ret = FUNC8(pdev, 0, "amdgpudrmfb");
	if (ret)
		return ret;

	dev = FUNC5(&kms_driver, &pdev->dev);
	if (FUNC1(dev))
		return FUNC2(dev);

	if (!supports_atomic)
		dev->driver_features &= ~DRIVER_ATOMIC;

	ret = FUNC11(pdev);
	if (ret)
		goto err_free;

	dev->pdev = pdev;

	FUNC12(pdev, dev);

retry_init:
	ret = FUNC7(dev, ent->driver_data);
	if (ret == -EAGAIN && ++retry <= 3) {
		FUNC0("retry init %d\n", retry);
		/* Don't request EX mode too frequently which is attacking */
		FUNC9(5000);
		goto retry_init;
	} else if (ret)
		goto err_pci;

	return 0;

err_pci:
	FUNC10(pdev);
err_free:
	FUNC6(dev);
	return ret;
}