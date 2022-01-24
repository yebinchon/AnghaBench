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
struct tegra_drm {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  domain; } ;
struct tegra_bo {int /*<<< orphan*/  mm; int /*<<< orphan*/  size; int /*<<< orphan*/  paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tegra_drm *tegra, struct tegra_bo *bo)
{
	if (!bo->mm)
		return 0;

	FUNC3(&tegra->mm_lock);
	FUNC1(tegra->domain, bo->paddr, bo->size);
	FUNC0(bo->mm);
	FUNC4(&tegra->mm_lock);

	FUNC2(bo->mm);

	return 0;
}