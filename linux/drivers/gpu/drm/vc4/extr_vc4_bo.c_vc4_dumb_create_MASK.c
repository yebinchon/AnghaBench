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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct vc4_bo {TYPE_1__ base; int /*<<< orphan*/  madv; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct vc4_bo*) ; 
 int FUNC2 (struct vc4_bo*) ; 
 int /*<<< orphan*/  VC4_BO_TYPE_DUMB ; 
 int /*<<< orphan*/  VC4_MADV_WILLNEED ; 
 int FUNC3 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vc4_bo* FUNC5 (struct drm_device*,int,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_file *file_priv,
		    struct drm_device *dev,
		    struct drm_mode_create_dumb *args)
{
	int min_pitch = FUNC0(args->width * args->bpp, 8);
	struct vc4_bo *bo = NULL;
	int ret;

	if (args->pitch < min_pitch)
		args->pitch = min_pitch;

	if (args->size < args->pitch * args->height)
		args->size = args->pitch * args->height;

	bo = FUNC5(dev, args->size, false, VC4_BO_TYPE_DUMB);
	if (FUNC1(bo))
		return FUNC2(bo);

	bo->madv = VC4_MADV_WILLNEED;

	ret = FUNC3(file_priv, &bo->base.base, &args->handle);
	FUNC4(&bo->base.base);

	return ret;
}