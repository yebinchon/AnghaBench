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
struct exynos_drm_ipp_funcs {int dummy; } ;
struct exynos_drm_ipp_formats {int dummy; } ;
struct exynos_drm_ipp {unsigned int capabilities; char const* name; unsigned int num_formats; scalar_t__ id; int /*<<< orphan*/  head; struct exynos_drm_ipp_formats const* formats; struct exynos_drm_ipp_funcs const* funcs; struct device* dev; int /*<<< orphan*/  done_wq; int /*<<< orphan*/  todo_list; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipp_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_ipp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev, struct exynos_drm_ipp *ipp,
		const struct exynos_drm_ipp_funcs *funcs, unsigned int caps,
		const struct exynos_drm_ipp_formats *formats,
		unsigned int num_formats, const char *name)
{
	FUNC2(!ipp);
	FUNC2(!funcs);
	FUNC2(!formats);
	FUNC2(!num_formats);

	FUNC5(&ipp->lock);
	FUNC1(&ipp->todo_list);
	FUNC3(&ipp->done_wq);
	ipp->dev = dev;
	ipp->funcs = funcs;
	ipp->capabilities = caps;
	ipp->name = name;
	ipp->formats = formats;
	ipp->num_formats = num_formats;

	/* ipp_list modification is serialized by component framework */
	FUNC4(&ipp->head, &ipp_list);
	ipp->id = num_ipp++;

	FUNC0(dev, "Registered ipp %d\n", ipp->id);

	return 0;
}