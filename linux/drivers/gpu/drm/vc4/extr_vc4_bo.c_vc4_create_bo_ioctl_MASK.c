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
struct vc4_file {int dummy; } ;
struct vc4_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct vc4_bo {TYPE_1__ base; int /*<<< orphan*/  madv; } ;
struct drm_vc4_create_bo {int /*<<< orphan*/  handle; int /*<<< orphan*/  size; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc4_bo*) ; 
 int FUNC1 (struct vc4_bo*) ; 
 int /*<<< orphan*/  VC4_BO_TYPE_V3D ; 
 int /*<<< orphan*/  VC4_MADV_WILLNEED ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC4 (struct drm_device*) ; 
 struct vc4_bo* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vc4_dev*,struct vc4_file*) ; 

int FUNC7(struct drm_device *dev, void *data,
			struct drm_file *file_priv)
{
	struct drm_vc4_create_bo *args = data;
	struct vc4_file *vc4file = file_priv->driver_priv;
	struct vc4_dev *vc4 = FUNC4(dev);
	struct vc4_bo *bo = NULL;
	int ret;

	ret = FUNC6(vc4, vc4file);
	if (ret)
		return ret;

	/*
	 * We can't allocate from the BO cache, because the BOs don't
	 * get zeroed, and that might leak data between users.
	 */
	bo = FUNC5(dev, args->size, false, VC4_BO_TYPE_V3D);
	if (FUNC0(bo))
		return FUNC1(bo);

	bo->madv = VC4_MADV_WILLNEED;

	ret = FUNC2(file_priv, &bo->base.base, &args->handle);
	FUNC3(&bo->base.base);

	return ret;
}