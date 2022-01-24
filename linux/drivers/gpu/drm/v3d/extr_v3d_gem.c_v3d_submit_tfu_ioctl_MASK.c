#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ww_acquire_ctx {int dummy; } ;
struct TYPE_6__ {int bo_count; struct drm_gem_object** bo; int /*<<< orphan*/  done_fence; } ;
struct drm_v3d_submit_tfu {int /*<<< orphan*/  out_sync; int /*<<< orphan*/ * bo_handles; int /*<<< orphan*/  in_sync; int /*<<< orphan*/  iia; } ;
struct v3d_tfu_job {TYPE_1__ base; struct drm_v3d_submit_tfu args; } ;
struct v3d_file_priv {int dummy; } ;
struct v3d_dev {int /*<<< orphan*/  sched_lock; int /*<<< orphan*/  drm; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int /*<<< orphan*/  table_lock; int /*<<< orphan*/  object_idr; struct v3d_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V3D_TFU ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object**,size_t,struct ww_acquire_ctx*) ; 
 struct drm_gem_object* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v3d_tfu_job*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct v3d_dev* FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_file*,TYPE_1__*,struct ww_acquire_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v3d_job_free ; 
 int FUNC14 (struct v3d_dev*,struct drm_file*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*,struct ww_acquire_ctx*) ; 
 int FUNC17 (struct v3d_file_priv*,TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC18(struct drm_device *dev, void *data,
		     struct drm_file *file_priv)
{
	struct v3d_dev *v3d = FUNC11(dev);
	struct v3d_file_priv *v3d_priv = file_priv->driver_priv;
	struct drm_v3d_submit_tfu *args = data;
	struct v3d_tfu_job *job;
	struct ww_acquire_ctx acquire_ctx;
	int ret = 0;

	FUNC12(&v3d->drm, args->iia);

	job = FUNC5(1, sizeof(*job), GFP_KERNEL);
	if (!job)
		return -ENOMEM;

	ret = FUNC14(v3d, file_priv, &job->base,
			   v3d_job_free, args->in_sync);
	if (ret) {
		FUNC6(job);
		return ret;
	}

	job->base.bo = FUNC5(FUNC0(args->bo_handles),
			       sizeof(*job->base.bo), GFP_KERNEL);
	if (!job->base.bo) {
		FUNC15(&job->base);
		return -ENOMEM;
	}

	job->args = *args;

	FUNC9(&file_priv->table_lock);
	for (job->base.bo_count = 0;
	     job->base.bo_count < FUNC0(args->bo_handles);
	     job->base.bo_count++) {
		struct drm_gem_object *bo;

		if (!args->bo_handles[job->base.bo_count])
			break;

		bo = FUNC4(&file_priv->object_idr,
			      args->bo_handles[job->base.bo_count]);
		if (!bo) {
			FUNC1("Failed to look up GEM BO %d: %d\n",
				  job->base.bo_count,
				  args->bo_handles[job->base.bo_count]);
			ret = -ENOENT;
			FUNC10(&file_priv->table_lock);
			goto fail;
		}
		FUNC2(bo);
		job->base.bo[job->base.bo_count] = bo;
	}
	FUNC10(&file_priv->table_lock);

	ret = FUNC16(&job->base, &acquire_ctx);
	if (ret)
		goto fail;

	FUNC7(&v3d->sched_lock);
	ret = FUNC17(v3d_priv, &job->base, V3D_TFU);
	if (ret)
		goto fail_unreserve;
	FUNC8(&v3d->sched_lock);

	FUNC13(file_priv,
						 &job->base, &acquire_ctx,
						 args->out_sync,
						 job->base.done_fence);

	FUNC15(&job->base);

	return 0;

fail_unreserve:
	FUNC8(&v3d->sched_lock);
	FUNC3(job->base.bo, job->base.bo_count,
				    &acquire_ctx);
fail:
	FUNC15(&job->base);

	return ret;
}