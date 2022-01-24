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
struct exynos_drm_ipp_task {int flags; struct exynos_drm_ipp* ipp; } ;
struct exynos_drm_ipp {int /*<<< orphan*/  done_wq; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;
struct drm_file {int dummy; } ;
struct drm_exynos_ioctl_ipp_commit {int flags; int /*<<< orphan*/  user_data; int /*<<< orphan*/  ipp_id; scalar_t__ reserved; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct exynos_drm_ipp_task*) ; 
 int DRM_EXYNOS_IPP_FLAGS ; 
 int DRM_EXYNOS_IPP_FLAG_EVENT ; 
 int DRM_EXYNOS_IPP_FLAG_NONBLOCK ; 
 int DRM_EXYNOS_IPP_FLAG_TEST_ONLY ; 
 int DRM_EXYNOS_IPP_TASK_ASYNC ; 
 int DRM_EXYNOS_IPP_TASK_DONE ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct exynos_drm_ipp* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct exynos_drm_ipp_task*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ; 
 struct exynos_drm_ipp_task* FUNC5 (struct exynos_drm_ipp*) ; 
 int FUNC6 (struct exynos_drm_ipp_task*) ; 
 int FUNC7 (struct exynos_drm_ipp_task*) ; 
 int /*<<< orphan*/  FUNC8 (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ; 
 int FUNC9 (struct exynos_drm_ipp_task*,struct drm_exynos_ioctl_ipp_commit*) ; 
 int FUNC10 (struct exynos_drm_ipp_task*,struct drm_file*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 

int FUNC12(struct drm_device *dev, void *data,
				struct drm_file *file_priv)
{
	struct drm_exynos_ioctl_ipp_commit *arg = data;
	struct exynos_drm_ipp *ipp;
	struct exynos_drm_ipp_task *task;
	int ret = 0;

	if ((arg->flags & ~DRM_EXYNOS_IPP_FLAGS) || arg->reserved)
		return -EINVAL;

	/* can't test and expect an event at the same time */
	if ((arg->flags & DRM_EXYNOS_IPP_FLAG_TEST_ONLY) &&
			(arg->flags & DRM_EXYNOS_IPP_FLAG_EVENT))
		return -EINVAL;

	ipp = FUNC1(arg->ipp_id);
	if (!ipp)
		return -ENOENT;

	task = FUNC5(ipp);
	if (!task)
		return -ENOMEM;

	ret = FUNC9(task, arg);
	if (ret)
		goto free;

	ret = FUNC6(task);
	if (ret)
		goto free;

	ret = FUNC10(task, file_priv);
	if (ret || arg->flags & DRM_EXYNOS_IPP_FLAG_TEST_ONLY)
		goto free;

	if (arg->flags & DRM_EXYNOS_IPP_FLAG_EVENT) {
		ret = FUNC2(task, file_priv,
						 arg->user_data);
		if (ret)
			goto free;
	}

	/*
	 * Queue task for processing on the hardware. task object will be
	 * then freed after exynos_drm_ipp_task_done()
	 */
	if (arg->flags & DRM_EXYNOS_IPP_FLAG_NONBLOCK) {
		FUNC0(ipp->dev,
				     "ipp: %d, nonblocking processing task %pK\n",
				     ipp->id, task);

		task->flags |= DRM_EXYNOS_IPP_TASK_ASYNC;
		FUNC3(task->ipp, task);
		ret = 0;
	} else {
		FUNC0(ipp->dev, "ipp: %d, processing task %pK\n",
				     ipp->id, task);
		FUNC3(ipp, task);
		ret = FUNC11(ipp->done_wq,
					task->flags & DRM_EXYNOS_IPP_TASK_DONE);
		if (ret)
			FUNC4(ipp, task);
		else
			ret = FUNC7(task);
	}
	return ret;
free:
	FUNC8(ipp, task);

	return ret;
}