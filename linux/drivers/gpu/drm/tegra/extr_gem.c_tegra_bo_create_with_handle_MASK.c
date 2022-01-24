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
struct tegra_bo {int /*<<< orphan*/  gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct tegra_bo* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tegra_bo*) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tegra_bo* FUNC4 (struct drm_device*,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct tegra_bo *FUNC6(struct drm_file *file,
					     struct drm_device *drm,
					     size_t size,
					     unsigned long flags,
					     u32 *handle)
{
	struct tegra_bo *bo;
	int err;

	bo = FUNC4(drm, size, flags);
	if (FUNC1(bo))
		return bo;

	err = FUNC2(file, &bo->gem, handle);
	if (err) {
		FUNC5(&bo->gem);
		return FUNC0(err);
	}

	FUNC3(&bo->gem);

	return bo;
}