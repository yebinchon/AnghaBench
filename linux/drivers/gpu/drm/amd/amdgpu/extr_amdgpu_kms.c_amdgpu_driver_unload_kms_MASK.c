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
struct drm_device {struct amdgpu_device* dev_private; int /*<<< orphan*/  dev; } ;
struct amdgpu_device {int /*<<< orphan*/ * rmmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct drm_device *dev)
{
	struct amdgpu_device *adev = dev->dev_private;

	if (adev == NULL)
		return;

	FUNC4(adev);

	if (adev->rmmio == NULL)
		goto done_free;

	if (FUNC3(adev))
		FUNC5(adev, false);

	if (FUNC2(dev)) {
		FUNC8(dev->dev);
		FUNC7(dev->dev);
	}

	FUNC0(adev);

	FUNC1(adev);

done_free:
	FUNC6(adev);
	dev->dev_private = NULL;
}