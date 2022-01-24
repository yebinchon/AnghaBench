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
struct tegra_drm {int /*<<< orphan*/  pitch_align; } ;
struct tegra_bo {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct tegra_drm* dev_private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct tegra_bo*) ; 
 int FUNC2 (struct tegra_bo*) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 struct tegra_bo* FUNC4 (struct drm_file*,struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_file *file, struct drm_device *drm,
			 struct drm_mode_create_dumb *args)
{
	unsigned int min_pitch = FUNC0(args->width * args->bpp, 8);
	struct tegra_drm *tegra = drm->dev_private;
	struct tegra_bo *bo;

	args->pitch = FUNC3(min_pitch, tegra->pitch_align);
	args->size = args->pitch * args->height;

	bo = FUNC4(file, drm, args->size, 0,
					 &args->handle);
	if (FUNC1(bo))
		return FUNC2(bo);

	return 0;
}