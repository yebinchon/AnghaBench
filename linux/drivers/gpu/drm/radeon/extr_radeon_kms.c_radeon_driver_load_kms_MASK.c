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
struct radeon_device {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* pdev; void* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_FLAG_NEVER_SKIP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
 unsigned long RADEON_IS_AGP ; 
 unsigned long RADEON_IS_IGP ; 
 unsigned long RADEON_IS_PCI ; 
 unsigned long RADEON_IS_PCIE ; 
 unsigned long RADEON_IS_PX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeon_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*,struct drm_device*,TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 (struct drm_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 scalar_t__ radeon_runtime_pm ; 

int FUNC19(struct drm_device *dev, unsigned long flags)
{
	struct radeon_device *rdev;
	int r, acpi_status;

	rdev = FUNC3(sizeof(struct radeon_device), GFP_KERNEL);
	if (rdev == NULL) {
		return -ENOMEM;
	}
	dev->dev_private = (void *)rdev;

	/* update BUS flag */
	if (FUNC4(dev->pdev, PCI_CAP_ID_AGP)) {
		flags |= RADEON_IS_AGP;
	} else if (FUNC5(dev->pdev)) {
		flags |= RADEON_IS_PCIE;
	} else {
		flags |= RADEON_IS_PCI;
	}

	if ((radeon_runtime_pm != 0) &&
	    FUNC16() &&
	    ((flags & RADEON_IS_IGP) == 0) &&
	    !FUNC6(dev->pdev))
		flags |= RADEON_IS_PX;

	/* radeon_device_init should report only fatal error
	 * like memory allocation failure or iomapping failure,
	 * or memory manager initialization failure, it must
	 * properly initialize the GPU MC controller and permit
	 * VRAM allocation
	 */
	r = FUNC14(rdev, dev, dev->pdev, flags);
	if (r) {
		FUNC1(&dev->pdev->dev, "Fatal error during GPU init\n");
		goto out;
	}

	/* Again modeset_init should fail only on fatal error
	 * otherwise it should provide enough functionalities
	 * for shadowfb to run
	 */
	r = FUNC18(rdev);
	if (r)
		FUNC1(&dev->pdev->dev, "Fatal error during modeset init\n");

	/* Call ACPI methods: require modeset init
	 * but failure is not fatal
	 */
	if (!r) {
		acpi_status = FUNC13(rdev);
		if (acpi_status)
		FUNC0(&dev->pdev->dev,
				"Error during ACPI methods call\n");
	}

	if (FUNC17(dev)) {
		FUNC2(dev->dev, DPM_FLAG_NEVER_SKIP);
		FUNC12(dev->dev);
		FUNC11(dev->dev, 5000);
		FUNC10(dev->dev);
		FUNC7(dev->dev);
		FUNC8(dev->dev);
		FUNC9(dev->dev);
	}

out:
	if (r)
		FUNC15(dev);


	return r;
}