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
struct drm_mode_create_dumb {int pitch; int width; int size; int height; int /*<<< orphan*/  handle; int /*<<< orphan*/  bpp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_file*,struct drm_device*,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct drm_file *file,
		    struct drm_device *dev,
		    struct drm_mode_create_dumb *args)
{
	args->pitch = args->width * FUNC0(args->bpp, 8);
	args->size = args->pitch * args->height;
	return FUNC1(file, dev,
			      args->size, &args->handle);
}