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
struct tegra_bo {int /*<<< orphan*/  gem; int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_bo* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_bo*) ; 
 struct tegra_bo* FUNC6 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_bo_ops ; 

__attribute__((used)) static struct tegra_bo *FUNC8(struct drm_device *drm,
					      size_t size)
{
	struct tegra_bo *bo;
	int err;

	bo = FUNC6(sizeof(*bo), GFP_KERNEL);
	if (!bo)
		return FUNC0(-ENOMEM);

	FUNC4(&bo->base, &tegra_bo_ops);
	size = FUNC7(size, PAGE_SIZE);

	err = FUNC2(drm, &bo->gem, size);
	if (err < 0)
		goto free;

	err = FUNC1(&bo->gem);
	if (err < 0)
		goto release;

	return bo;

release:
	FUNC3(&bo->gem);
free:
	FUNC5(bo);
	return FUNC0(err);
}