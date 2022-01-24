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
struct drm_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct drm_device* FUNC3 (struct device*) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct drm_device *drm = FUNC3(dev);
	int ret;

	FUNC5(drm);

	ret = FUNC0(drm->dev, drm);
	if (ret) {
		FUNC2(dev, "can't bind component devices\n");
		return ret;
	}

	ret = FUNC6(drm);
	if (ret)
		goto unbind;

	ret = FUNC4(drm, 0);
	if (ret < 0)
		goto unbind;

	return 0;

unbind:
	FUNC1(drm->dev, drm);
	return ret;
}