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
union qxl_release_info {int id; } ;
struct qxl_release {int release_offset; struct qxl_bo* release_bo; } ;
struct qxl_device {int* current_release_bo_offset; int /*<<< orphan*/  release_mutex; struct qxl_bo** current_release_bo; } ;
struct qxl_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int QXL_RELEASE_CURSOR_CMD ; 
 int QXL_RELEASE_DRAWABLE ; 
 int QXL_RELEASE_SURFACE_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct qxl_bo* FUNC3 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_bo**) ; 
 int FUNC5 (struct qxl_device*,int,struct qxl_release**) ; 
 int FUNC6 (struct qxl_device*,struct qxl_bo**) ; 
 int /*<<< orphan*/  FUNC7 (struct qxl_device*,struct qxl_release*) ; 
 int FUNC8 (struct qxl_release*,struct qxl_bo*) ; 
 union qxl_release_info* FUNC9 (struct qxl_device*,struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC10 (struct qxl_device*,struct qxl_release*,union qxl_release_info*) ; 
 int* release_size_per_bo ; 
 int* releases_per_bo ; 

int FUNC11(struct qxl_device *qdev, unsigned long size,
				       int type, struct qxl_release **release,
				       struct qxl_bo **rbo)
{
	struct qxl_bo *bo;
	int idr_ret;
	int ret = 0;
	union qxl_release_info *info;
	int cur_idx;

	if (type == QXL_RELEASE_DRAWABLE)
		cur_idx = 0;
	else if (type == QXL_RELEASE_SURFACE_CMD)
		cur_idx = 1;
	else if (type == QXL_RELEASE_CURSOR_CMD)
		cur_idx = 2;
	else {
		FUNC0("got illegal type: %d\n", type);
		return -EINVAL;
	}

	idr_ret = FUNC5(qdev, type, release);
	if (idr_ret < 0) {
		if (rbo)
			*rbo = NULL;
		return idr_ret;
	}

	FUNC1(&qdev->release_mutex);
	if (qdev->current_release_bo_offset[cur_idx] + 1 >= releases_per_bo[cur_idx]) {
		FUNC4(&qdev->current_release_bo[cur_idx]);
		qdev->current_release_bo_offset[cur_idx] = 0;
		qdev->current_release_bo[cur_idx] = NULL;
	}
	if (!qdev->current_release_bo[cur_idx]) {
		ret = FUNC6(qdev, &qdev->current_release_bo[cur_idx]);
		if (ret) {
			FUNC2(&qdev->release_mutex);
			FUNC7(qdev, *release);
			return ret;
		}
	}

	bo = FUNC3(qdev->current_release_bo[cur_idx]);

	(*release)->release_bo = bo;
	(*release)->release_offset = qdev->current_release_bo_offset[cur_idx] * release_size_per_bo[cur_idx];
	qdev->current_release_bo_offset[cur_idx]++;

	if (rbo)
		*rbo = bo;

	FUNC2(&qdev->release_mutex);

	ret = FUNC8(*release, bo);
	FUNC4(&bo);
	if (ret) {
		FUNC7(qdev, *release);
		return ret;
	}

	info = FUNC9(qdev, *release);
	info->id = idr_ret;
	FUNC10(qdev, *release, info);

	return ret;
}