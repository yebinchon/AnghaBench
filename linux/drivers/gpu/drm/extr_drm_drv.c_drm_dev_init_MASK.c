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
struct drm_driver {int dummy; } ;
struct drm_device {unsigned int driver_features; int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  filelist_mutex; int /*<<< orphan*/  clientlist_mutex; int /*<<< orphan*/  master_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  anon_inode; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  vblank_event_list; int /*<<< orphan*/  clientlist; int /*<<< orphan*/  filelist_internal; int /*<<< orphan*/  filelist; struct drm_driver* driver; int /*<<< orphan*/  ref; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_GEM ; 
 int /*<<< orphan*/  DRIVER_RENDER ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_MINOR_PRIMARY ; 
 int /*<<< orphan*/  DRM_MINOR_RENDER ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_core_init_complete ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*) ; 
 int FUNC18 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

int FUNC26(struct drm_device *dev,
		 struct drm_driver *driver,
		 struct device *parent)
{
	int ret;

	if (!drm_core_init_complete) {
		FUNC1("DRM core is not initialized\n");
		return -ENODEV;
	}

	FUNC0(!parent);

	FUNC21(&dev->ref);
	dev->dev = FUNC20(parent);
	dev->driver = driver;

	/* no per-device feature limits by default */
	dev->driver_features = ~0u;

	FUNC16(dev);
	FUNC2(&dev->filelist);
	FUNC2(&dev->filelist_internal);
	FUNC2(&dev->clientlist);
	FUNC2(&dev->vblank_event_list);

	FUNC25(&dev->event_lock);
	FUNC23(&dev->struct_mutex);
	FUNC23(&dev->filelist_mutex);
	FUNC23(&dev->clientlist_mutex);
	FUNC23(&dev->master_mutex);

	dev->anon_inode = FUNC9();
	if (FUNC3(dev->anon_inode)) {
		ret = FUNC4(dev->anon_inode);
		FUNC1("Cannot allocate anonymous inode: %d\n", ret);
		goto err_free;
	}

	if (FUNC6(dev, DRIVER_RENDER)) {
		ret = FUNC18(dev, DRM_MINOR_RENDER);
		if (ret)
			goto err_minors;
	}

	ret = FUNC18(dev, DRM_MINOR_PRIMARY);
	if (ret)
		goto err_minors;

	ret = FUNC12(dev);
	if (ret)
		goto err_minors;

	FUNC14(dev);

	if (FUNC6(dev, DRIVER_GEM)) {
		ret = FUNC11(dev);
		if (ret) {
			FUNC1("Cannot initialize graphics execution manager (GEM)\n");
			goto err_ctxbitmap;
		}
	}

	ret = FUNC7(dev, FUNC5(parent));
	if (ret)
		goto err_setunique;

	return 0;

err_setunique:
	if (FUNC6(dev, DRIVER_GEM))
		FUNC10(dev);
err_ctxbitmap:
	FUNC13(dev);
	FUNC17(dev);
err_minors:
	FUNC19(dev, DRM_MINOR_PRIMARY);
	FUNC19(dev, DRM_MINOR_RENDER);
	FUNC8(dev->anon_inode);
err_free:
	FUNC24(dev->dev);
	FUNC22(&dev->master_mutex);
	FUNC22(&dev->clientlist_mutex);
	FUNC22(&dev->filelist_mutex);
	FUNC22(&dev->struct_mutex);
	FUNC15(dev);
	return ret;
}