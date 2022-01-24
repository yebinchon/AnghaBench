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
struct drm_mode_create_dumb {int pitch; int width; int bpp; int height; int /*<<< orphan*/  size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SZ_64 ; 
 int FUNC3 (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ; 

__attribute__((used)) static int FUNC4(struct drm_file *file, struct drm_device *dev,
			     struct drm_mode_create_dumb *args)
{
	/*
	 * We need 64bytes aligned stride, and PAGE aligned size
	 */
	args->pitch = FUNC0(FUNC1(args->width * args->bpp, 8), SZ_64);
	args->size = FUNC2(args->pitch * args->height);

	return FUNC3(file, dev, args);
}