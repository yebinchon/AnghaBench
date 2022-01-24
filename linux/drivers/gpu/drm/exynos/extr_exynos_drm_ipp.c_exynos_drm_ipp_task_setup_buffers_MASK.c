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
struct exynos_drm_ipp_buffer {int dummy; } ;
struct exynos_drm_ipp_task {int /*<<< orphan*/  dev; struct exynos_drm_ipp_buffer dst; struct exynos_drm_ipp_buffer src; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct exynos_drm_ipp_task*) ; 
 int FUNC1 (struct exynos_drm_ipp_buffer*,struct drm_file*) ; 

__attribute__((used)) static int FUNC2(struct exynos_drm_ipp_task *task,
				     struct drm_file *filp)
{
	struct exynos_drm_ipp_buffer *src = &task->src, *dst = &task->dst;
	int ret = 0;

	FUNC0(task->dev, "Setting buffer for task %pK\n",
			     task);

	ret = FUNC1(src, filp);
	if (ret) {
		FUNC0(task->dev,
				     "Task %pK: src buffer setup failed\n",
				     task);
		return ret;
	}
	ret = FUNC1(dst, filp);
	if (ret) {
		FUNC0(task->dev,
				     "Task %pK: dst buffer setup failed\n",
				     task);
		return ret;
	}

	FUNC0(task->dev, "Task %pK: buffers prepared.\n",
			     task);

	return ret;
}