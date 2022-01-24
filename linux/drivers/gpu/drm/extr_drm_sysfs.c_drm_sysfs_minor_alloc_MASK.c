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
struct drm_minor {scalar_t__ type; int /*<<< orphan*/  index; TYPE_1__* dev; } ;
struct device {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; int /*<<< orphan*/  class; int /*<<< orphan*/  devt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MAJOR ; 
 scalar_t__ DRM_MINOR_RENDER ; 
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct drm_minor*) ; 
 int FUNC3 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  drm_class ; 
 int /*<<< orphan*/  drm_sysfs_device_minor ; 
 int /*<<< orphan*/  drm_sysfs_release ; 
 struct device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

struct device *FUNC7(struct drm_minor *minor)
{
	const char *minor_str;
	struct device *kdev;
	int r;

	if (minor->type == DRM_MINOR_RENDER)
		minor_str = "renderD%d";
	else
		minor_str = "card%d";

	kdev = FUNC5(sizeof(*kdev), GFP_KERNEL);
	if (!kdev)
		return FUNC0(-ENOMEM);

	FUNC4(kdev);
	kdev->devt = FUNC1(DRM_MAJOR, minor->index);
	kdev->class = drm_class;
	kdev->type = &drm_sysfs_device_minor;
	kdev->parent = minor->dev->dev;
	kdev->release = drm_sysfs_release;
	FUNC2(kdev, minor);

	r = FUNC3(kdev, minor_str, minor->index);
	if (r < 0)
		goto err_free;

	return kdev;

err_free:
	FUNC6(kdev);
	return FUNC0(r);
}