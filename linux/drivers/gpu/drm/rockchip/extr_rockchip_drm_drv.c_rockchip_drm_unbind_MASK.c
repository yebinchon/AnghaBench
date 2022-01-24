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
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct drm_device*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 

__attribute__((used)) static void FUNC10(struct device *dev)
{
	struct drm_device *drm_dev = FUNC1(dev);

	FUNC5(drm_dev);

	FUNC8(drm_dev);
	FUNC6(drm_dev);

	FUNC3(drm_dev);
	FUNC0(dev, drm_dev);
	FUNC7(drm_dev);
	FUNC9(drm_dev);

	drm_dev->dev_private = NULL;
	FUNC2(dev, NULL);
	FUNC4(drm_dev);
}