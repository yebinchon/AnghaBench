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
struct drm_mode_create_dumb {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* vram_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (struct drm_file*,struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct drm_mode_create_dumb*) ; 

int FUNC2(struct drm_file *file,
				    struct drm_device *dev,
				    struct drm_mode_create_dumb *args)
{
	if (FUNC0(!dev->vram_mm, "VRAM MM not initialized"))
		return -EINVAL;

	return FUNC1(file, dev, &dev->vram_mm->bdev, 0,
					     false, args);
}