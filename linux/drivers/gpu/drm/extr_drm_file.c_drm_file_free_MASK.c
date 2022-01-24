#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int /*<<< orphan*/  pid; int /*<<< orphan*/  event_list; int /*<<< orphan*/  prime; int /*<<< orphan*/  filp; TYPE_2__* minor; } ;
struct drm_device {TYPE_3__* driver; int /*<<< orphan*/  open_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* postclose ) (struct drm_device*,struct drm_file*) ;int /*<<< orphan*/  (* preclose ) (struct drm_device*,struct drm_file*) ;} ;
struct TYPE_5__ {TYPE_1__* kdev; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_GEM ; 
 int /*<<< orphan*/  DRIVER_HAVE_DMA ; 
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  DRIVER_SYNCOBJ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_file*) ; 
 scalar_t__ FUNC6 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

void FUNC21(struct drm_file *file)
{
	struct drm_device *dev;

	if (!file)
		return;

	dev = file->minor->dev;

	FUNC0("pid = %d, device = 0x%lx, open_count = %d\n",
		  FUNC20(current),
		  (long)FUNC16(file->minor->kdev->devt),
		  dev->open_count);

	if (FUNC2(dev, DRIVER_LEGACY) &&
	    dev->driver->preclose)
		dev->driver->preclose(dev, file);

	if (FUNC2(dev, DRIVER_LEGACY))
		FUNC8(dev, file->filp);

	if (FUNC2(dev, DRIVER_HAVE_DMA))
		FUNC9(dev, file);

	FUNC3(file);

	if (FUNC2(dev, DRIVER_MODESET)) {
		FUNC4(file);
		FUNC12(dev, file);
	}

	if (FUNC2(dev, DRIVER_SYNCOBJ))
		FUNC13(file);

	if (FUNC2(dev, DRIVER_GEM))
		FUNC5(dev, file);

	FUNC7(dev, file);

	if (FUNC6(file))
		FUNC10(file);

	if (dev->driver->postclose)
		dev->driver->postclose(dev, file);

	FUNC11(&file->prime);

	FUNC1(!FUNC15(&file->event_list));

	FUNC17(file->pid);
	FUNC14(file);
}