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
struct drm_set_version {int drm_di_major; int drm_di_minor; int drm_dd_major; scalar_t__ drm_dd_minor; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  master_mutex; TYPE_1__* driver; int /*<<< orphan*/  if_version; } ;
struct TYPE_2__ {int major; scalar_t__ minor; } ;

/* Variables and functions */
 int DRM_IF_MAJOR ; 
 int DRM_IF_MINOR ; 
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	struct drm_set_version *sv = data;
	int if_version, retcode = 0;

	FUNC3(&dev->master_mutex);
	if (sv->drm_di_major != -1) {
		if (sv->drm_di_major != DRM_IF_MAJOR ||
		    sv->drm_di_minor < 0 || sv->drm_di_minor > DRM_IF_MINOR) {
			retcode = -EINVAL;
			goto done;
		}
		if_version = FUNC0(sv->drm_di_major,
					    sv->drm_di_minor);
		dev->if_version = FUNC2(if_version, dev->if_version);
		if (sv->drm_di_minor >= 1) {
			/*
			 * Version 1.1 includes tying of DRM to specific device
			 * Version 1.4 has proper PCI domain support
			 */
			retcode = FUNC1(dev, file_priv);
			if (retcode)
				goto done;
		}
	}

	if (sv->drm_dd_major != -1) {
		if (sv->drm_dd_major != dev->driver->major ||
		    sv->drm_dd_minor < 0 || sv->drm_dd_minor >
		    dev->driver->minor) {
			retcode = -EINVAL;
			goto done;
		}
	}

done:
	sv->drm_di_major = DRM_IF_MAJOR;
	sv->drm_di_minor = DRM_IF_MINOR;
	sv->drm_dd_major = dev->driver->major;
	sv->drm_dd_minor = dev->driver->minor;
	FUNC4(&dev->master_mutex);

	return retcode;
}