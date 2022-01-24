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
typedef  int /*<<< orphan*/  u32 ;
struct lima_device {int dummy; } ;
struct lima_bo {int /*<<< orphan*/  gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lima_bo*) ; 
 int FUNC1 (struct lima_bo*) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct lima_bo* FUNC4 (struct lima_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lima_device* FUNC5 (struct drm_device*) ; 

int FUNC6(struct drm_device *dev, struct drm_file *file,
			   u32 size, u32 flags, u32 *handle)
{
	int err;
	struct lima_bo *bo;
	struct lima_device *ldev = FUNC5(dev);

	bo = FUNC4(ldev, size, flags, NULL);
	if (FUNC0(bo))
		return FUNC1(bo);

	err = FUNC2(file, &bo->gem, handle);

	/* drop reference from allocate - handle holds it now */
	FUNC3(&bo->gem);

	return err;
}