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
struct radeon_device {scalar_t__ is_atom_bios; scalar_t__ bios; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC7(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;
	bool ret = false;

	if (rdev->bios) {
		if (rdev->is_atom_bios) {
			ret = FUNC2(dev);
			if (ret == false)
				ret = FUNC1(dev);
		} else {
			ret = FUNC3(dev);
			if (ret == false)
				ret = FUNC4(dev);
		}
	} else {
		if (!FUNC0(rdev))
			ret = FUNC4(dev);
	}
	if (ret) {
		FUNC6(dev);
		FUNC5(dev);
	}

	return ret;
}