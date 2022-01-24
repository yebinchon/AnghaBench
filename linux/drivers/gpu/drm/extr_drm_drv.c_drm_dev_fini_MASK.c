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
struct drm_device {int /*<<< orphan*/  unique; int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  filelist_mutex; int /*<<< orphan*/  clientlist_mutex; int /*<<< orphan*/  master_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  anon_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_GEM ; 
 int /*<<< orphan*/  DRM_MINOR_PRIMARY ; 
 int /*<<< orphan*/  DRM_MINOR_RENDER ; 
 scalar_t__ FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct drm_device *dev)
{
	FUNC7(dev);

	if (FUNC0(dev, DRIVER_GEM))
		FUNC2(dev);

	FUNC3(dev);
	FUNC5(dev);
	FUNC1(dev->anon_inode);

	FUNC6(dev, DRM_MINOR_PRIMARY);
	FUNC6(dev, DRM_MINOR_RENDER);

	FUNC10(dev->dev);

	FUNC9(&dev->master_mutex);
	FUNC9(&dev->clientlist_mutex);
	FUNC9(&dev->filelist_mutex);
	FUNC9(&dev->struct_mutex);
	FUNC4(dev);
	FUNC8(dev->unique);
}