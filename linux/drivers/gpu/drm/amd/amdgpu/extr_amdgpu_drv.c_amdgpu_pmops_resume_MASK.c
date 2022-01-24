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
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*,int,int) ; 
 struct drm_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct drm_device *drm_dev = FUNC2(dev);

	/* GPU comes up enabled by the bios on resume */
	if (FUNC0(drm_dev)) {
		FUNC3(dev);
		FUNC5(dev);
		FUNC4(dev);
	}

	return FUNC1(drm_dev, true, true);
}