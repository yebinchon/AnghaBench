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
struct drm_mode_create_dumb {int pitch; int height; int /*<<< orphan*/  handle; int /*<<< orphan*/  size; int /*<<< orphan*/  bpp; int /*<<< orphan*/  width; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int MSM_BO_SCANOUT ; 
 int MSM_BO_WC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 

int FUNC3(struct drm_file *file, struct drm_device *dev,
		struct drm_mode_create_dumb *args)
{
	args->pitch = FUNC1(args->width, args->bpp);
	args->size  = FUNC0(args->pitch * args->height);
	return FUNC2(dev, file, args->size,
			MSM_BO_SCANOUT | MSM_BO_WC, &args->handle, "dumb");
}