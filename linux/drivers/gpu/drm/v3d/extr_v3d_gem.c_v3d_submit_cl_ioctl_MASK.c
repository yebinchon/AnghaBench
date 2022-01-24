#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ww_acquire_ctx {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bo_count; int /*<<< orphan*/  bo; int /*<<< orphan*/  done_fence; int /*<<< orphan*/  deps; } ;
struct v3d_render_job {scalar_t__ start; scalar_t__ end; TYPE_1__ base; struct v3d_render_job* render; int /*<<< orphan*/  qts; int /*<<< orphan*/  qms; int /*<<< orphan*/  qma; int /*<<< orphan*/  unref_list; } ;
struct v3d_file_priv {int dummy; } ;
struct v3d_dev {int /*<<< orphan*/  sched_lock; int /*<<< orphan*/  drm; } ;
struct v3d_bin_job {scalar_t__ start; scalar_t__ end; TYPE_1__ base; struct v3d_bin_job* render; int /*<<< orphan*/  qts; int /*<<< orphan*/  qms; int /*<<< orphan*/  qma; int /*<<< orphan*/  unref_list; } ;
struct drm_v3d_submit_cl {scalar_t__ rcl_start; scalar_t__ rcl_end; scalar_t__ pad; scalar_t__ bcl_start; scalar_t__ bcl_end; int /*<<< orphan*/  out_sync; int /*<<< orphan*/  bo_handle_count; int /*<<< orphan*/  bo_handles; int /*<<< orphan*/  qts; int /*<<< orphan*/  qms; int /*<<< orphan*/  qma; int /*<<< orphan*/  in_sync_bcl; int /*<<< orphan*/  in_sync_rcl; } ;
struct drm_file {struct v3d_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V3D_BIN ; 
 int /*<<< orphan*/  V3D_RENDER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 struct v3d_render_job* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v3d_render_job*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct v3d_dev* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_file*,TYPE_1__*,struct ww_acquire_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v3d_job_free ; 
 int FUNC12 (struct v3d_dev*,struct drm_file*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*,struct ww_acquire_ctx*) ; 
 int FUNC15 (struct drm_device*,struct drm_file*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct v3d_file_priv*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v3d_render_job_free ; 

int
FUNC17(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct v3d_dev *v3d = FUNC9(dev);
	struct v3d_file_priv *v3d_priv = file_priv->driver_priv;
	struct drm_v3d_submit_cl *args = data;
	struct v3d_bin_job *bin = NULL;
	struct v3d_render_job *render;
	struct ww_acquire_ctx acquire_ctx;
	int ret = 0;

	FUNC10(&v3d->drm, args->rcl_start, args->rcl_end);

	if (args->pad != 0) {
		FUNC0("pad must be zero: %d\n", args->pad);
		return -EINVAL;
	}

	render = FUNC5(1, sizeof(*render), GFP_KERNEL);
	if (!render)
		return -ENOMEM;

	render->start = args->rcl_start;
	render->end = args->rcl_end;
	FUNC1(&render->unref_list);

	ret = FUNC12(v3d, file_priv, &render->base,
			   v3d_render_job_free, args->in_sync_rcl);
	if (ret) {
		FUNC6(render);
		return ret;
	}

	if (args->bcl_start != args->bcl_end) {
		bin = FUNC5(1, sizeof(*bin), GFP_KERNEL);
		if (!bin) {
			FUNC13(&render->base);
			return -ENOMEM;
		}

		ret = FUNC12(v3d, file_priv, &bin->base,
				   v3d_job_free, args->in_sync_bcl);
		if (ret) {
			FUNC13(&render->base);
			FUNC6(bin);
			return ret;
		}

		bin->start = args->bcl_start;
		bin->end = args->bcl_end;
		bin->qma = args->qma;
		bin->qms = args->qms;
		bin->qts = args->qts;
		bin->render = render;
	}

	ret = FUNC15(dev, file_priv, &render->base,
			     args->bo_handles, args->bo_handle_count);
	if (ret)
		goto fail;

	ret = FUNC14(&render->base, &acquire_ctx);
	if (ret)
		goto fail;

	FUNC7(&v3d->sched_lock);
	if (bin) {
		ret = FUNC16(v3d_priv, &bin->base, V3D_BIN);
		if (ret)
			goto fail_unreserve;

		ret = FUNC3(&render->base.deps,
					      FUNC2(bin->base.done_fence));
		if (ret)
			goto fail_unreserve;
	}

	ret = FUNC16(v3d_priv, &render->base, V3D_RENDER);
	if (ret)
		goto fail_unreserve;
	FUNC8(&v3d->sched_lock);

	FUNC11(file_priv,
						 &render->base,
						 &acquire_ctx,
						 args->out_sync,
						 render->base.done_fence);

	if (bin)
		FUNC13(&bin->base);
	FUNC13(&render->base);

	return 0;

fail_unreserve:
	FUNC8(&v3d->sched_lock);
	FUNC4(render->base.bo,
				    render->base.bo_count, &acquire_ctx);
fail:
	if (bin)
		FUNC13(&bin->base);
	FUNC13(&render->base);

	return ret;
}