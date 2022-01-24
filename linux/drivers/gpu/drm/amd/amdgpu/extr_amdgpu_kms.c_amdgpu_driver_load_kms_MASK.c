#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* pdev; void* dev_private; } ;
struct amdgpu_device {scalar_t__ rmmio; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long AMD_IS_APU ; 
 unsigned long AMD_IS_PX ; 
 int /*<<< orphan*/  DPM_FLAG_NEVER_SKIP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*,struct drm_device*,TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ amdgpu_runtime_pm ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(struct drm_device *dev, unsigned long flags)
{
	struct amdgpu_device *adev;
	int r, acpi_status;

	adev = FUNC10(sizeof(struct amdgpu_device), GFP_KERNEL);
	if (adev == NULL) {
		return -ENOMEM;
	}
	dev->dev_private = (void *)adev;

	if ((amdgpu_runtime_pm != 0) &&
	    FUNC4() &&
	    (FUNC6() ||
	     FUNC5()) &&
	    ((flags & AMD_IS_APU) == 0) &&
	    !FUNC11(dev->pdev))
		flags |= AMD_IS_PX;

	/* amdgpu_device_init should report only fatal error
	 * like memory allocation failure or iomapping failure,
	 * or memory manager initialization failure, it must
	 * properly initialize the GPU MC controller and permit
	 * VRAM allocation
	 */
	r = FUNC1(adev, dev, dev->pdev, flags);
	if (r) {
		FUNC8(&dev->pdev->dev, "Fatal error during GPU init\n");
		goto out;
	}

	/* Call ACPI methods: require modeset init
	 * but failure is not fatal
	 */
	if (!r) {
		acpi_status = FUNC0(adev);
		if (acpi_status)
			FUNC7(&dev->pdev->dev,
				"Error during ACPI methods call\n");
	}

	if (FUNC2(dev)) {
		FUNC9(dev->dev, DPM_FLAG_NEVER_SKIP);
		FUNC18(dev->dev);
		FUNC17(dev->dev, 5000);
		FUNC16(dev->dev);
		FUNC12(dev->dev);
		FUNC13(dev->dev);
		FUNC14(dev->dev);
	}

out:
	if (r) {
		/* balance pm_runtime_get_sync in amdgpu_driver_unload_kms */
		if (adev->rmmio && FUNC2(dev))
			FUNC15(dev->dev);
		FUNC3(dev);
	}

	return r;
}