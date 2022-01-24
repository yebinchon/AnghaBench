#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int start; } ;
struct v3d_bo {TYPE_2__ base; TYPE_1__ node; } ;
struct drm_v3d_create_bo {scalar_t__ flags; int offset; int /*<<< orphan*/  handle; int /*<<< orphan*/  size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct v3d_bo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int FUNC3 (struct v3d_bo*) ; 
 int FUNC4 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct v3d_bo* FUNC6 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_device *dev, void *data,
			struct drm_file *file_priv)
{
	struct drm_v3d_create_bo *args = data;
	struct v3d_bo *bo = NULL;
	int ret;

	if (args->flags != 0) {
		FUNC0("unknown create_bo flags: %d\n", args->flags);
		return -EINVAL;
	}

	bo = FUNC6(dev, file_priv, FUNC2(args->size));
	if (FUNC1(bo))
		return FUNC3(bo);

	args->offset = bo->node.start << PAGE_SHIFT;

	ret = FUNC4(file_priv, &bo->base.base, &args->handle);
	FUNC5(&bo->base.base);

	return ret;
}