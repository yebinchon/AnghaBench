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
struct v3d_dev {int /*<<< orphan*/  dev; TYPE_1__* queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  sched; } ;

/* Variables and functions */
 size_t V3D_BIN ; 
 size_t V3D_CACHE_CLEAN ; 
 size_t V3D_CSD ; 
 size_t V3D_RENDER ; 
 size_t V3D_TFU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  v3d_bin_sched_ops ; 
 int /*<<< orphan*/  v3d_cache_clean_sched_ops ; 
 int /*<<< orphan*/  v3d_csd_sched_ops ; 
 scalar_t__ FUNC3 (struct v3d_dev*) ; 
 int /*<<< orphan*/  v3d_render_sched_ops ; 
 int /*<<< orphan*/  FUNC4 (struct v3d_dev*) ; 
 int /*<<< orphan*/  v3d_tfu_sched_ops ; 

int
FUNC5(struct v3d_dev *v3d)
{
	int hw_jobs_limit = 1;
	int job_hang_limit = 0;
	int hang_limit_ms = 500;
	int ret;

	ret = FUNC1(&v3d->queue[V3D_BIN].sched,
			     &v3d_bin_sched_ops,
			     hw_jobs_limit, job_hang_limit,
			     FUNC2(hang_limit_ms),
			     "v3d_bin");
	if (ret) {
		FUNC0(v3d->dev, "Failed to create bin scheduler: %d.", ret);
		return ret;
	}

	ret = FUNC1(&v3d->queue[V3D_RENDER].sched,
			     &v3d_render_sched_ops,
			     hw_jobs_limit, job_hang_limit,
			     FUNC2(hang_limit_ms),
			     "v3d_render");
	if (ret) {
		FUNC0(v3d->dev, "Failed to create render scheduler: %d.",
			ret);
		FUNC4(v3d);
		return ret;
	}

	ret = FUNC1(&v3d->queue[V3D_TFU].sched,
			     &v3d_tfu_sched_ops,
			     hw_jobs_limit, job_hang_limit,
			     FUNC2(hang_limit_ms),
			     "v3d_tfu");
	if (ret) {
		FUNC0(v3d->dev, "Failed to create TFU scheduler: %d.",
			ret);
		FUNC4(v3d);
		return ret;
	}

	if (FUNC3(v3d)) {
		ret = FUNC1(&v3d->queue[V3D_CSD].sched,
				     &v3d_csd_sched_ops,
				     hw_jobs_limit, job_hang_limit,
				     FUNC2(hang_limit_ms),
				     "v3d_csd");
		if (ret) {
			FUNC0(v3d->dev, "Failed to create CSD scheduler: %d.",
				ret);
			FUNC4(v3d);
			return ret;
		}

		ret = FUNC1(&v3d->queue[V3D_CACHE_CLEAN].sched,
				     &v3d_cache_clean_sched_ops,
				     hw_jobs_limit, job_hang_limit,
				     FUNC2(hang_limit_ms),
				     "v3d_cache_clean");
		if (ret) {
			FUNC0(v3d->dev, "Failed to create CACHE_CLEAN scheduler: %d.",
				ret);
			FUNC4(v3d);
			return ret;
		}
	}

	return 0;
}